#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/bank_account_bban'
require 'worldline/connect/sdk/v1/domain/bank_details_request'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    bank_account_bban = Domain::BankAccountBban.new
    bank_account_bban.account_number = '0532013000'
    bank_account_bban.bank_code = '37040044'
    bank_account_bban.country_code = 'DE'

    body = Domain::BankDetailsRequest.new
    body.bank_account_bban = bank_account_bban

    response = client.v1.merchant('merchantId').services.bankaccount(body)
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
