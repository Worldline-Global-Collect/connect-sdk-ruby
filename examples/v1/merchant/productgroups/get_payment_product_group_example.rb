#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/merchant/productgroups/get_productgroup_params'

Productgroups = Worldline::Connect::SDK::V1::Merchant::Productgroups

def example
  get_client do |client|
    query = Productgroups::GetProductgroupParams.new
    query.country_code = 'US'
    query.currency_code = 'USD'
    query.locale = 'en_US'
    query.amount = 1000
    query.is_recurring = true
    query.is_installments = true
    query.add_hide('fields')

    response = client.v1.merchant('merchantId').productgroups.get('cards', query)
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
