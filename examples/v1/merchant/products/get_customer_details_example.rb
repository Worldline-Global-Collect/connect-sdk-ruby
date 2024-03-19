#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/get_customer_details_request'
require 'worldline/connect/sdk/v1/domain/key_value_pair'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    values = []

    value1 = Domain::KeyValuePair.new
    value1.key = 'fiscalNumber'
    value1.value = '01234567890'

    values << value1

    body = Domain::GetCustomerDetailsRequest.new
    body.country_code = 'SE'
    body.values = values

    response = client.v1.merchant('merchantId').products.customer_details(9000, body)
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
