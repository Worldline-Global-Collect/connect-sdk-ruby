#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/create_hosted_checkout_request'
require 'worldline/connect/sdk/v1/domain/customer'
require 'worldline/connect/sdk/v1/domain/hosted_checkout_specific_input'
require 'worldline/connect/sdk/v1/domain/order'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    hosted_checkout_specific_input = Domain::HostedCheckoutSpecificInput.new
    hosted_checkout_specific_input.locale = 'en_GB'
    hosted_checkout_specific_input.variant = 'testVariant'

    amount_of_money = Domain::AmountOfMoney.new
    amount_of_money.amount = 2345
    amount_of_money.currency_code = 'USD'

    billing_address = Domain::Address.new
    billing_address.country_code = 'US'

    customer = Domain::Customer.new
    customer.billing_address = billing_address
    customer.merchant_customer_id = '1234'

    order = Domain::Order.new
    order.amount_of_money = amount_of_money
    order.customer = customer

    body = Domain::CreateHostedCheckoutRequest.new
    body.hosted_checkout_specific_input = hosted_checkout_specific_input
    body.order = order

    response = client.v1.merchant('merchantId').hostedcheckouts.create(body)
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
