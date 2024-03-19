require 'spec_helper'
require 'integration_setup'
require 'securerandom'
require 'webmock/rspec'
require 'worldline/connect/sdk/call_context'
require 'worldline/connect/sdk/v1/declined_payment_exception'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/create_payment_request'
require 'worldline/connect/sdk/v1/domain/customer'
require 'worldline/connect/sdk/v1/domain/order'
require 'worldline/connect/sdk/v1/domain/redirect_payment_product809_specific_input'
require 'worldline/connect/sdk/v1/domain/redirect_payment_method_specific_input'

describe 'Idempotence with the server' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'realises when an idempotent request is sent twice' do
    amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new
    amount_of_money.currency_code = 'EUR'
    amount_of_money.amount = 100
    billing_address = Worldline::Connect::SDK::V1::Domain::Address.new
    billing_address.country_code = 'NL'
    customer = Worldline::Connect::SDK::V1::Domain::Customer.new
    customer.locale = 'en'
    customer.billing_address = billing_address
    order = Worldline::Connect::SDK::V1::Domain::Order.new
    order.amount_of_money = amount_of_money
    order.customer = customer
    payment_product_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct809SpecificInput.new
    payment_product_input.issuer_id = 'INGBNL2A'
    payment_method_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentMethodSpecificInput.new
    payment_method_input.return_url = 'http://example.com'
    payment_method_input.payment_product_id = 809
    payment_method_input.payment_product809_specific_input = payment_product_input
    body = Worldline::Connect::SDK::V1::Domain::CreatePaymentRequest.new
    body.order = order
    body.redirect_payment_method_specific_input = payment_method_input
    idempotence_key = SecureRandom.uuid
    context = Worldline::Connect::SDK::CallContext.new(idempotence_key)

    Integration.init_client(false) do |client|
      def do_create_payment(client, body, context)
        # For this test it doesn't matter if the response is successful or declined,
        # as long as idempotence is handled correctly
        begin
          client.v1.merchant(Integration::MERCHANT_ID).payments.create(body, context)
        rescue Worldline::Connect::SDK::V1::DeclinedPaymentException => ex
          ex.payment_result
        end
      end

      result = do_create_payment(client, body, context)
      payment_id = result.payment.id
      status = result.payment.status

      expect(payment_id).to_not be_nil
      expect(status).to_not be_nil
      expect(context.idempotence_key).to eq(idempotence_key)
      expect(context.idempotence_request_timestamp).to be_nil

      result_2 = do_create_payment(client, body, context)
      payment_id2 = result_2.payment.id
      status2 = result_2.payment.status

      expect(payment_id2).to eq(payment_id)
      expect(status2).to eq(status)
      expect(context.idempotence_key).to eq(idempotence_key)
      expect(context.idempotence_request_timestamp).to_not be_nil
    end
  end
end
