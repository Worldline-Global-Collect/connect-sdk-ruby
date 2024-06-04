#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/api_exception'
require 'worldline/connect/sdk/v1/declined_payout_exception'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/bank_account_iban'
require 'worldline/connect/sdk/v1/domain/bank_transfer_payout_method_specific_input'
require 'worldline/connect/sdk/v1/domain/company_information'
require 'worldline/connect/sdk/v1/domain/contact_details_base'
require 'worldline/connect/sdk/v1/domain/create_payout_request'
require 'worldline/connect/sdk/v1/domain/payout_customer'
require 'worldline/connect/sdk/v1/domain/payout_details'
require 'worldline/connect/sdk/v1/domain/payout_references'
require 'worldline/connect/sdk/v1/domain/personal_name'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    bank_account_iban = Domain::BankAccountIban.new
    bank_account_iban.account_holder_name = 'Wile E. Coyote'
    bank_account_iban.iban = 'IT60X0542811101000000123456'

    bank_transfer_payout_method_specific_input = Domain::BankTransferPayoutMethodSpecificInput.new
    bank_transfer_payout_method_specific_input.bank_account_iban = bank_account_iban
    bank_transfer_payout_method_specific_input.payout_date = '20150102'
    bank_transfer_payout_method_specific_input.payout_text = 'Payout Acme'
    bank_transfer_payout_method_specific_input.swift_code = 'swift'

    amount_of_money = Domain::AmountOfMoney.new
    amount_of_money.amount = 2345
    amount_of_money.currency_code = 'EUR'

    address = Domain::Address.new
    address.city = 'Burbank'
    address.country_code = 'US'
    address.house_number = '411'
    address.state = 'California'
    address.street = 'N Hollywood Way'
    address.zip = '91505'

    company_information = Domain::CompanyInformation.new
    company_information.name = 'Acme Labs'

    contact_details = Domain::ContactDetailsBase.new
    contact_details.email_address = 'wile.e.coyote@acmelabs.com'

    name = Domain::PersonalName.new
    name.first_name = 'Wile'
    name.surname = 'Coyote'
    name.surname_prefix = 'E.'
    name.title = 'Mr.'

    customer = Domain::PayoutCustomer.new
    customer.address = address
    customer.company_information = company_information
    customer.contact_details = contact_details
    customer.name = name

    references = Domain::PayoutReferences.new
    references.merchant_reference = 'AcmeOrder001'

    payout_details = Domain::PayoutDetails.new
    payout_details.amount_of_money = amount_of_money
    payout_details.customer = customer
    payout_details.references = references

    body = Domain::CreatePayoutRequest.new
    body.bank_transfer_payout_method_specific_input = bank_transfer_payout_method_specific_input
    body.payout_details = payout_details

    begin
      response = client.v1.merchant('merchantId').payouts.create(body)
    rescue Worldline::Connect::SDK::V1::DeclinedPayoutException => e
      handle_declined_payout(e.payout_result)
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

def handle_declined_payout(payout_result)
  # handle the result here
end

def handle_error_response(error_id, errors)
  # handle the error response here
end
