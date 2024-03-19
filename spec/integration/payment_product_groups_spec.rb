require 'spec_helper'
require 'yaml'
require 'integration_setup'
require 'webmock/rspec'
require 'worldline/connect/sdk/v1/merchant/productgroups/get_productgroup_params'

describe 'PaymentProductGroups' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'can be accessed' do

    params = Worldline::Connect::SDK::V1::Merchant::Productgroups::GetProductgroupParams.new
    params.country_code = 'NL'
    params.currency_code = 'EUR'

    Integration.init_client(false) do |client|
      response = client.v1.merchant(Integration::MERCHANT_ID).productgroups.get('cards', params)
      expect(response.id).to eq('cards')
    end
  end
end
