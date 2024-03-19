require 'spec_helper'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/customer_token'
require 'worldline/connect/sdk/v1/domain/token_card'
require 'worldline/connect/sdk/v1/domain/token_card_data'
require 'worldline/connect/sdk/v1/domain/token_response'

DataObject ||= Worldline::Connect::SDK::Domain::DataObject
DefaultMarshaller ||= Worldline::Connect::SDK::JSON::DefaultMarshaller
Token ||= Worldline::Connect::SDK::V1::Domain

class TokenResponseWithExtraField < Token::TokenResponse
  attr_accessor :dummy
end

describe DefaultMarshaller do
  context 'unmarshal()' do
    it 'should unmarshal extra fields' do
      token = TokenResponseWithExtraField.new
      token.card = Token::TokenCard.new
      token.card.customer = Token::CustomerToken.new
      token.card.customer.billing_address = Worldline::Connect::SDK::V1::Domain::Address.new
      token.card.customer.billing_address.country_code = 'NL'
      token.card.data = Token::TokenCardData.new
      token.dummy = 'foobar'
      # marshal the extended token and unmarshal it as a regular token response
      unmarshalled = DefaultMarshaller.instance.unmarshal(DefaultMarshaller.instance.marshal(token), Token::TokenResponse)

      expect(unmarshalled.card).to_not be_nil
      expect(unmarshalled.card.customer).to_not be_nil
      expect(unmarshalled.card.customer.billing_address).to_not be_nil
      expect(unmarshalled.card.customer.billing_address.country_code).to eq('NL')
      expect(token.card.data).to_not be_nil
    end
  end
end
