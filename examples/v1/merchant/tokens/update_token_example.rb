#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/card_without_cvv'
require 'worldline/connect/sdk/v1/domain/company_information'
require 'worldline/connect/sdk/v1/domain/customer_token'
require 'worldline/connect/sdk/v1/domain/personal_information_token'
require 'worldline/connect/sdk/v1/domain/personal_name_token'
require 'worldline/connect/sdk/v1/domain/token_card'
require 'worldline/connect/sdk/v1/domain/token_card_data'
require 'worldline/connect/sdk/v1/domain/update_token_request'

Domain = Worldline::Connect::SDK::V1::Domain

def example
  get_client do |client|
    billing_address = Domain::Address.new
    billing_address.additional_info = 'b'
    billing_address.city = 'Monument Valley'
    billing_address.country_code = 'US'
    billing_address.house_number = '13'
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

    card_without_cvv = Domain::CardWithoutCvv.new
    card_without_cvv.card_number = '4567350000427977'
    card_without_cvv.cardholder_name = 'Wile E. Coyote'
    card_without_cvv.expiry_date = '1299'
    card_without_cvv.issue_number = '12'

    data = Domain::TokenCardData.new
    data.card_without_cvv = card_without_cvv

    card = Domain::TokenCard.new
    card.customer = customer
    card.data = data

    body = Domain::UpdateTokenRequest.new
    body.card = card
    body.payment_product_id = 1

    client.v1.merchant('merchantId').tokens.update('tokenId', body)
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
