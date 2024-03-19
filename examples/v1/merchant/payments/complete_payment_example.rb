#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/card_without_cvv'
require 'worldline/connect/sdk/v1/domain/complete_payment_card_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/complete_payment_request'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    card = Domain::CardWithoutCvv.new
    card.card_number = '67030000000000003'
    card.cardholder_name = 'Wile E. Coyote'
    card.expiry_date = '1299'

    card_payment_method_specific_input = Domain::CompletePaymentCardPaymentMethodSpecificInput.new
    card_payment_method_specific_input.card = card

    body = Domain::CompletePaymentRequest.new
    body.card_payment_method_specific_input = card_payment_method_specific_input

    response = client.v1.merchant('merchantId').payments.complete('paymentId', body)
  end
end

def get_client
  api_key_id = ENV.fetch('connect.api.apiKeyId', 'someKey')
  secret_api_key = ENV.fetch('connect.api.secretApiKey', 'someSecret')
  configuration_file_name = File.join(__FILE__, '..', '..', '..', 'example_configuration.yml')
  yield client = Worldline::Connect::SDK::Factory.create_client_from_file(configuration_file_name, api_key_id, secret_api_key)
ensure
  # Free networking resources when done
  client.close unless client.nil?
end
