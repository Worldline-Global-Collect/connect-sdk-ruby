#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/create_dispute_request'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    amount_of_money = Domain::AmountOfMoney.new
    amount_of_money.amount = 1234
    amount_of_money.currency_code = 'USD'

    body = Domain::CreateDisputeRequest.new
    body.amount_of_money = amount_of_money
    body.contact_person = 'Wile Coyote'
    body.email_address = 'wile.e.coyote@acmelabs.com'
    body.reply_to = 'r.runner@acmelabs.com'
    body.request_message = 'This is the message from the merchant to GlobalCollect. It is a a freeform text field.'

    response = client.v1.merchant('merchantId').payments.dispute('paymentId', body)
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
