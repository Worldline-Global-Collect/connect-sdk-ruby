require 'spec_helper'
require 'securerandom'

Domain ||= Worldline::Connect::SDK::V1::Domain


describe 'DefaultConnectionIdempotence' do

  CallContext = Worldline::Connect::SDK::CallContext
  base_headers = {'dummy' => 'none'}
  resource_prefix = 'spec/fixtures/resources/communication/'

  it 'should be able to send a request with idempotence key' do
    response_body = IO.read(resource_prefix + 'idempotence_success.json')
    idempotence_key = SecureRandom.uuid
    call_context = CallContext.new(idempotence_key)
    request = create_payment_request

    stub_request(:post, 'https://api.preprod.connect.worldline-solutions.com/v1/20000/payments')
        .with(headers: {'X-GCS-Idempotence-Key' => idempotence_key})
        .to_return(status: 201, body: response_body,
                   headers: base_headers.merge({'Content-Type' => 'application/json', 'Location' => 'api.preprod.connect.worldline-solutions.com/v1/20000/payments/000002000020142549460000100001'}))

    response = CLIENT.v1.merchant('20000').payments.create(request, call_context)

    expect(response).to_not be_nil
    expect(response.payment).to_not be_nil
    expect(response.payment.id).to_not be_nil
    expect(call_context.idempotence_key).to eq(idempotence_key)
  end

  it 'properly reports when the request has arrived prior' do
    response_body = IO.read(resource_prefix + 'idempotence_success.json')
    idempotence_key = SecureRandom.uuid
    idempotence_timestamp = Time.now.to_f*1000  # Convert time to milliseconds
    call_context = CallContext.new(idempotence_key)
    request = create_payment_request

    stub_request(:post, 'https://api.preprod.connect.worldline-solutions.com/v1/20000/payments')
        .with(headers: {'X-GCS-Idempotence-Key' => idempotence_key})
        .to_return(status: 201, body: response_body,
                   headers: base_headers.merge({'Content-Type' => 'application/json',
                                                'Location' => 'api.preprod.connect.worldline-solutions.com/v1/20000/payments/000002000020142549460000100001',
                                                'X-GCS-Idempotence-Request-Timestamp' => idempotence_timestamp}))

    response = CLIENT.v1.merchant('20000').payments.create(request, call_context)

    expect(response).to_not be_nil
    expect(response.payment).to_not be_nil
    expect(response.payment.id).to_not be_nil
    expect(call_context.idempotence_key).to eq(idempotence_key)
    expect(call_context.idempotence_request_timestamp.to_s).to eq(idempotence_timestamp.to_s)
  end

  it 'throws an exception when payment is refused' do
    response_body = IO.read(resource_prefix + 'idempotence_rejected.json')
    idempotence_key = SecureRandom.uuid
    call_context = CallContext.new(idempotence_key)
    request = create_payment_request

    stub_request(:post, 'https://api.preprod.connect.worldline-solutions.com/v1/20000/payments')
        .with(headers: {'X-GCS-Idempotence-Key' => idempotence_key})
        .to_return(status: 402, body: response_body,
                   headers: base_headers.merge({'Content-Type' => 'application/json'}))

    expect{response = CLIENT.v1.merchant('20000').payments.create(request, call_context)}.
        to raise_error(Worldline::Connect::SDK::V1::DeclinedPaymentException){ |err|
      expect(err.status_code).to eq(402)
      expect(err.response_body).to eq(response_body)
      expect(call_context.idempotence_key).to eq(idempotence_key)
      expect(call_context.idempotence_request_timestamp).to be_nil
    }
  end

  it 'reports idempotence failure when another request has been sent prior' do
    response_body = IO.read(resource_prefix + 'idempotence_rejected.json')
    idempotence_key = SecureRandom.uuid
    idempotence_timestamp = Time.now.to_f*1000  # Convert time to milliseconds
    call_context = CallContext.new(idempotence_key)
    request = create_payment_request

    stub_request(:post, 'https://api.preprod.connect.worldline-solutions.com/v1/20000/payments')
        .with(headers: {'X-GCS-Idempotence-Key' => idempotence_key})
        .to_return(status: 402, body: response_body,
                   headers: base_headers.merge({'Content-Type' => 'application/json',
                                                'X-GCS-Idempotence-Request-Timestamp' => idempotence_timestamp}))

    expect{response = CLIENT.v1.merchant('20000').payments.create(request, call_context)}.
        to raise_error(Worldline::Connect::SDK::V1::DeclinedPaymentException){ |err|
      expect(err.status_code).to eq(402)
      expect(err.response_body).to eq(response_body)
      expect(call_context.idempotence_key).to eq(idempotence_key)
      expect(call_context.idempotence_request_timestamp.to_s).to eq(idempotence_timestamp.to_s)
    }
  end

  it 'reports idempotence failure when another request is still in progress' do
    response_body = IO.read(resource_prefix + 'idempotence_duplicate_failure.json')
    idempotence_key = SecureRandom.uuid
    idempotence_timestamp = Time.now.to_f*1000  # Convert time to milliseconds
    call_context = CallContext.new(idempotence_key)
    request = create_payment_request

    stub_request(:post, 'https://api.preprod.connect.worldline-solutions.com/v1/20000/payments')
        .with(headers: {'X-GCS-Idempotence-Key' => idempotence_key})
        .to_return(status: 409, body: response_body,
                   headers: base_headers.merge({'Content-Type' => 'application/json',
                                                'X-GCS-Idempotence-Request-Timestamp' => idempotence_timestamp}))

    expect{response = CLIENT.v1.merchant('20000').payments.create(request, call_context)}.
        to raise_error(Worldline::Connect::SDK::V1::IdempotenceException){ |err|
      expect(err.status_code).to eq(409)
      expect(err.response_body).to eq(response_body)
      expect(call_context.idempotence_key).to eq(idempotence_key)
      expect(call_context.idempotence_request_timestamp.to_s).to eq(idempotence_timestamp.to_s)
    }
  end
end

def create_payment_request
  amount_of_money = Domain::AmountOfMoney.new
  amount_of_money.amount = 2345
  amount_of_money.currency_code = 'CAD'
  customer = Domain::Customer.new
  billing_address = Domain::Address.new
  billing_address.country_code = 'CA'
  customer.billing_address = billing_address
  order = Domain::Order.new
  order.customer = customer
  card = Domain::Card.new
  card.cvv = '123'
  card.card_number = '4567350000427977'
  card.expiry_date = '1220'
  card_payment_method_specific_input = Domain::CardPaymentMethodSpecificInput.new
  card_payment_method_specific_input.card = card
  card_payment_method_specific_input.payment_product_id = 1
  body = Domain::CreatePaymentRequest.new
  body.card_payment_method_specific_input = card_payment_method_specific_input
  body
end
