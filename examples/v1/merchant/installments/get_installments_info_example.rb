#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/get_installment_request'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    amount_of_money = Domain::AmountOfMoney.new
    amount_of_money.amount = 123
    amount_of_money.currency_code = 'EUR'

    body = Domain::GetInstallmentRequest.new
    body.amount_of_money = amount_of_money
    body.bin = '123455'
    body.country_code = 'NL'
    body.payment_product_id = 123

    response = client.v1.merchant('merchantId').installments.get_installments_info(body)
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
