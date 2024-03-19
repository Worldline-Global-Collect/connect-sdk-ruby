require 'spec_helper'
require 'integration_setup'
require 'webmock/rspec'
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/communication/metadata_provider'
require 'worldline/connect/sdk/communication/request_header'
require 'worldline/connect/sdk/v1/merchant/products/directory_params'

describe 'multiline headers' do

  before(:context){WebMock.allow_net_connect!}
  after(:context){WebMock.disable_net_connect!}

  it 'should be accepted by the Worldline Global Collect platform' do
    multi_line_header = " some value  \r\n \n with        a liberal amount     of \r\n  spaces    "
    configuration = Integration.init_communicator_configuration
    metadata_provider = Worldline::Connect::SDK::Communication::MetadataProvider.new(
      'Worldline',
      additional_request_headers: [Worldline::Connect::SDK::Communication::RequestHeader.new('X-GCS-MultiLineHeader', multi_line_header)]
    )
    communicator = Worldline::Connect::SDK::Factory.create_communicator_from_configuration(configuration, metadata_provider: metadata_provider)

    params = Worldline::Connect::SDK::V1::Merchant::Products::DirectoryParams.new
    params.country_code = 'NL'
    params.currency_code = 'EUR'

    init_client_from_communicator(communicator) do |client|
      response = client.v1.merchant(Integration::MERCHANT_ID).products.directory(809, params)
      expect(response.entries.length).to be > 0
    end
  end
end

def init_client_from_communicator(communicator)
    yield client = Worldline::Connect::SDK::Factory.create_client_from_communicator(communicator).with_client_meta_info('{"test":"test"}')
    client.close
end
