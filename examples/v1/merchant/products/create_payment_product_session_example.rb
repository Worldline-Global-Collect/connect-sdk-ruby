#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/create_payment_product_session_request'
require 'worldline/connect/sdk/v1/domain/mobile_payment_product_session302_specific_input'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    payment_product_session302_specific_input = Domain::MobilePaymentProductSession302SpecificInput.new
    payment_product_session302_specific_input.display_name = 'Worldline'
    payment_product_session302_specific_input.domain_name = 'pay1.checkout.worldline-solutions.com'
    payment_product_session302_specific_input.validation_url = '<VALIDATION URL RECEIVED FROM APPLE>'

    body = Domain::CreatePaymentProductSessionRequest.new
    body.payment_product_session302_specific_input = payment_product_session302_specific_input

    response = client.v1.merchant('merchantId').products.sessions(302, body)
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
