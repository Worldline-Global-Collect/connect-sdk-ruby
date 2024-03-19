#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/approve_token_request'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    body = Domain::ApproveTokenRequest.new
    body.mandate_signature_date = '20150201'
    body.mandate_signature_place = 'Monument Valley'
    body.mandate_signed = true

    client.v1.merchant('merchantId').tokens.approvesepadirectdebit('tokenId', body)
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
