require 'rspec'
require 'spec_helper'
require 'worldline/connect/sdk/v1/merchant/products/get_product_params'
require 'worldline/connect/sdk/v1/merchant/productgroups/get_productgroup_params'

RequestParam ||= Worldline::Connect::SDK::Communication::RequestParam

shared_examples_for 'GetParams' do

  it 'should output an empty list when no parameters are present' do
    expect(params.to_request_parameters).to eq([])
  end

  it 'accepts parameters' do
    expected = []
    params.amount = 1000
    expected << RequestParam.new('amount', '1000')
    params.country_code = 'NL'
    expected << RequestParam.new('countryCode', 'NL')
    params.currency_code = 'EUR'
    expected << RequestParam.new('currencyCode', 'EUR')
    params.is_recurring = true
    expected << RequestParam.new('isRecurring', 'true')
    params.locale = 'nl_NL'
    expected << RequestParam.new('locale', 'nl_NL')
    params.add_hide('fields')
    expected << RequestParam.new('hide', 'fields')
    params.add_hide('accounts_on_file')
    expected << RequestParam.new('hide', 'accounts_on_file')

    expect(params.to_request_parameters).to match_array(expected)
  end

  it 'allows for deletion' do
    params.amount = 1000
    params.country_code = 'NL'
    params.currency_code = 'EUR'
    params.amount = nil
    params.country_code = nil
    params.currency_code = nil

    expect(params.to_request_parameters).to eq([])
  end
end

GetProductParams ||= Worldline::Connect::SDK::V1::Merchant::Products::GetProductParams
GetProductgroupParams ||= Worldline::Connect::SDK::V1::Merchant::Productgroups::GetProductgroupParams

describe GetProductParams do
  let(:params){GetProductParams.new}

  it_behaves_like 'GetParams'
end

describe GetProductgroupParams do
  let(:params){GetProductgroupParams.new}

  it_behaves_like 'GetParams'
end
