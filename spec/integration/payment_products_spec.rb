require 'spec_helper'
require 'integration_setup'
require 'webmock/rspec'
require 'worldline/connect/sdk/v1/merchant/products/directory_params'
require 'worldline/connect/sdk/v1/merchant/products/find_products_params'

describe 'PaymentProducts' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'can be accessed' do

    params = Worldline::Connect::SDK::V1::Merchant::Products::FindProductsParams.new
    params.country_code = 'NL'
    params.currency_code = 'EUR'

    Integration.init_client(false) do |client|
      response = client.v1.merchant(Integration::MERCHANT_ID).products.find(params)
      expect(response.payment_products.length).to be > 0
    end
  end

  it 'has directories that can be accessed' do

    params = Worldline::Connect::SDK::V1::Merchant::Products::DirectoryParams.new
    params.country_code = 'NL'
    params.currency_code = 'EUR'

    Integration.init_client(false) do |client|
      response = client.v1.merchant(Integration::MERCHANT_ID).products.directory(809, params)
      expect(response.entries.length).to be > 0
    end
  end
end
