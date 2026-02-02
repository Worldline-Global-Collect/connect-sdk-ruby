require 'date'
require 'spec_helper'
require 'integration_setup'
require 'webmock/rspec'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/card_without_cvv'
require 'worldline/connect/sdk/v1/domain/create_token_request'
require 'worldline/connect/sdk/v1/domain/customer_token'
require 'worldline/connect/sdk/v1/domain/token_card'
require 'worldline/connect/sdk/v1/domain/token_card_data'
require 'worldline/connect/sdk/v1/merchant/tokens/delete_token_params'

describe 'token' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'can be created and deleted' do
    expiry_date = (Date.today + 365 / 2).strftime('%m%y')

    billing_address = Worldline::Connect::SDK::V1::Domain::Address.new
    billing_address.country_code = 'NL'
    customer = Worldline::Connect::SDK::V1::Domain::CustomerToken.new
    customer.billing_address = billing_address
    card_without_ccv = Worldline::Connect::SDK::V1::Domain::CardWithoutCvv.new
    card_without_ccv.cardholder_name = 'Jan'
    card_without_ccv.issue_number = '12'
    card_without_ccv.card_number = '4567350000427977'
    card_without_ccv.expiry_date = expiry_date
    card_data = Worldline::Connect::SDK::V1::Domain::TokenCardData.new
    card_data.card_without_cvv = card_without_ccv
    card = Worldline::Connect::SDK::V1::Domain::TokenCard.new
    card.customer = customer
    card.data = card_data
    create_token_request = Worldline::Connect::SDK::V1::Domain::CreateTokenRequest.new
    create_token_request.payment_product_id = 1
    create_token_request.card = card

    Integration.init_client(false) do |client|
      token_response = client.v1.merchant(Integration::MERCHANT_ID).tokens.create(create_token_request)
      expect(token_response.token).to_not be_nil
      client.v1.merchant(Integration::MERCHANT_ID).tokens.delete(token_response.token,
                                                                 Worldline::Connect::SDK::V1::Merchant::Tokens::DeleteTokenParams.new)
    end
  end
end
