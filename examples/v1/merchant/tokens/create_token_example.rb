#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/bank_account_bban'
require 'worldline/connect/sdk/v1/domain/company_information'
require 'worldline/connect/sdk/v1/domain/create_token_request'
require 'worldline/connect/sdk/v1/domain/customer_token'
require 'worldline/connect/sdk/v1/domain/mandate_non_sepa_direct_debit'
require 'worldline/connect/sdk/v1/domain/personal_information_token'
require 'worldline/connect/sdk/v1/domain/personal_name_token'
require 'worldline/connect/sdk/v1/domain/token_non_sepa_direct_debit'
require 'worldline/connect/sdk/v1/domain/token_non_sepa_direct_debit_payment_product705_specific_data'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    billing_address = Domain::Address.new
    billing_address.additional_info = 'Suite II'
    billing_address.city = 'Monument Valley'
    billing_address.country_code = 'US'
    billing_address.house_number = '1'
    billing_address.state = 'Utah'
    billing_address.street = 'Desertroad'
    billing_address.zip = '84536'

    company_information = Domain::CompanyInformation.new
    company_information.name = 'Acme Labs'

    name = Domain::PersonalNameToken.new
    name.first_name = 'Wile'
    name.surname = 'Coyote'
    name.surname_prefix = 'E.'

    personal_information = Domain::PersonalInformationToken.new
    personal_information.name = name

    customer = Domain::CustomerToken.new
    customer.billing_address = billing_address
    customer.company_information = company_information
    customer.merchant_customer_id = '1234'
    customer.personal_information = personal_information

    bank_account_bban = Domain::BankAccountBban.new
    bank_account_bban.account_number = '000000123456'
    bank_account_bban.bank_code = '05428'
    bank_account_bban.branch_code = '11101'
    bank_account_bban.check_digit = 'X'
    bank_account_bban.country_code = 'IT'

    payment_product705_specific_data = Domain::TokenNonSepaDirectDebitPaymentProduct705SpecificData.new
    payment_product705_specific_data.authorisation_id = '123456'
    payment_product705_specific_data.bank_account_bban = bank_account_bban

    mandate = Domain::MandateNonSepaDirectDebit.new
    mandate.payment_product705_specific_data = payment_product705_specific_data

    non_sepa_direct_debit = Domain::TokenNonSepaDirectDebit.new
    non_sepa_direct_debit.customer = customer
    non_sepa_direct_debit.mandate = mandate

    body = Domain::CreateTokenRequest.new
    body.non_sepa_direct_debit = non_sepa_direct_debit
    body.payment_product_id = 705

    response = client.v1.merchant('merchantId').tokens.create(body)
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
