#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/bank_account_bban'
require 'worldline/connect/sdk/v1/domain/customer_risk_assessment'
require 'worldline/connect/sdk/v1/domain/order_risk_assessment'
require 'worldline/connect/sdk/v1/domain/risk_assessment_bank_account'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    bank_account_bban = Domain::BankAccountBban.new
    bank_account_bban.account_number = '0532013000'
    bank_account_bban.bank_code = '37040044'
    bank_account_bban.country_code = 'DE'

    amount_of_money = Domain::AmountOfMoney.new
    amount_of_money.amount = 100
    amount_of_money.currency_code = 'EUR'

    billing_address = Domain::Address.new
    billing_address.country_code = 'US'

    customer = Domain::CustomerRiskAssessment.new
    customer.billing_address = billing_address
    customer.locale = 'en_US'

    order = Domain::OrderRiskAssessment.new
    order.amount_of_money = amount_of_money
    order.customer = customer

    body = Domain::RiskAssessmentBankAccount.new
    body.bank_account_bban = bank_account_bban
    body.order = order

    response = client.v1.merchant('merchantId').riskassessments.bankaccounts(body)
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
