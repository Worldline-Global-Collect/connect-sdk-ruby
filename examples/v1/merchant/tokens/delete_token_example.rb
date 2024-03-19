#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/merchant/tokens/delete_token_params'

Tokens = Worldline::Connect::SDK::V1::Merchant::Tokens

def example
  get_client do |client|
    query = Tokens::DeleteTokenParams.new
    query.mandate_cancel_date = '20150102'

    client.v1.merchant('merchantId').tokens.delete('tokenId', query)
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
