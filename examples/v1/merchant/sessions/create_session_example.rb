#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/session_request'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    tokens = []
    tokens << '126166b16ed04b3ab85fb06da1d7a167'
    tokens << '226166b16ed04b3ab85fb06da1d7a167'
    tokens << '122c5b4d-dd40-49f0-b7c9-3594212167a9'
    tokens << '326166b16ed04b3ab85fb06da1d7a167'
    tokens << '426166b16ed04b3ab85fb06da1d7a167'

    body = Domain::SessionRequest.new
    body.tokens = tokens

    response = client.v1.merchant('merchantId').sessions.create(body)
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
