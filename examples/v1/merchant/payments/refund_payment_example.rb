#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/api_exception'
require 'worldline/connect/sdk/v1/declined_refund_exception'
require 'worldline/connect/sdk/v1/domain/address_personal'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/bank_account_iban'
require 'worldline/connect/sdk/v1/domain/bank_refund_method_specific_input'
require 'worldline/connect/sdk/v1/domain/contact_details_base'
require 'worldline/connect/sdk/v1/domain/personal_name'
require 'worldline/connect/sdk/v1/domain/refund_customer'
require 'worldline/connect/sdk/v1/domain/refund_references'
require 'worldline/connect/sdk/v1/domain/refund_request'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    amount_of_money = Domain::AmountOfMoney.new
    amount_of_money.amount = 1
    amount_of_money.currency_code = 'EUR'

    bank_account_iban = Domain::BankAccountIban.new
    bank_account_iban.iban = 'NL53INGB0000000036'

    bank_refund_method_specific_input = Domain::BankRefundMethodSpecificInput.new
    bank_refund_method_specific_input.bank_account_iban = bank_account_iban

    name = Domain::PersonalName.new
    name.surname = 'Coyote'

    address = Domain::AddressPersonal.new
    address.country_code = 'US'
    address.name = name

    contact_details = Domain::ContactDetailsBase.new
    contact_details.email_address = 'wile.e.coyote@acmelabs.com'
    contact_details.email_message_type = 'html'

    customer = Domain::RefundCustomer.new
    customer.address = address
    customer.contact_details = contact_details

    refund_references = Domain::RefundReferences.new
    refund_references.merchant_reference = 'AcmeOrder0001'

    body = Domain::RefundRequest.new
    body.amount_of_money = amount_of_money
    body.bank_refund_method_specific_input = bank_refund_method_specific_input
    body.customer = customer
    body.refund_date = '20140306'
    body.refund_references = refund_references

    begin
      response = client.v1.merchant('merchantId').payments.refund('paymentId', body)
    rescue Worldline::Connect::SDK::V1::DeclinedRefundException => e
      handle_declined_refund(e.refund_result)
    rescue Worldline::Connect::SDK::V1::ApiException => e
      handle_error_response(e.error_id, e.errors)
    end
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

def handle_declined_refund(refund_result)
  # handle the result here
end

def handle_error_response(error_id, errors)
  # handle the error response here
end
