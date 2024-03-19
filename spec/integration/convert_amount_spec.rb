require 'rspec'
require 'spec_helper'
require 'integration_setup'
require 'webmock/rspec'
require 'worldline/connect/sdk/v1/merchant/services/convert_amount_params'

describe 'convertAmount with the server' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'communicates with the Worldline Global Collect platform' do

    request = Worldline::Connect::SDK::V1::Merchant::Services::ConvertAmountParams.new
    request.amount = 123
    request.source = 'USD'
    request.target = 'EUR'

    Integration.init_client(false) do |client|
      response = client.v1.merchant(Integration::MERCHANT_ID).services.convert_amount(request)
      expect(response).to_not be_nil
      expect(response.converted_amount).to be > 0
    end
  end
end
