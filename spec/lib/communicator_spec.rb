require 'spec_helper'
require 'uri'

Communicator ||= Worldline::Connect::SDK::Communicator
Authenticator ||= Worldline::Connect::SDK::Authentication::Authenticator
DefaultMarshaller ||= Worldline::Connect::SDK::JSON::DefaultMarshaller
RequestParam ||= Worldline::Connect::SDK::Communication::RequestParam

describe Communicator do

  let(:conn){conn = Connection.allocate} # Create fake (uninitialized) connection
  let(:auth){auth = Authenticator.allocate} # Create fake (uninitialized) authenticator
  let(:metadataProvider){metadata_provider = MetadataProvider.new("Worldline")}
  let(:communicator){communicator = Communicator.new(URI('https://api.preprod.connect.worldline-solutions.com'), conn, auth, metadataProvider, DefaultMarshaller.instance)}
  context 'to_absolute_uri()' do
    it 'accepts a uri with or without a leading slash' do
      uri1 = communicator.send(:to_absolute_uri, 'v1/merchant/20000/convertamount', [])
      uri2 = communicator.send(:to_absolute_uri, '/v1/merchant/20000/convertamount', [])
      # Ruby URI library adds port in HTTPS url's by default
      expect(uri1.to_s).to eq('https://api.preprod.connect.worldline-solutions.com:443/v1/merchant/20000/convertamount')
      expect(uri2.to_s).to eq('https://api.preprod.connect.worldline-solutions.com:443/v1/merchant/20000/convertamount')
    end

    it 'adds request parameters to the uri' do
      request_params = [RequestParam.new('amount', '123'), RequestParam.new('source', 'USD'),
                        RequestParam.new('target', 'EUR'), RequestParam.new('dummy', 'é&%=')]

      uri = communicator.send(:to_absolute_uri, 'v1/merchant/20000/convertamount', request_params)

      expect(uri.to_s).to eq('https://api.preprod.connect.worldline-solutions.com:443/v1/merchant/20000/convertamount'\
                             '?amount=123&source=USD&target=EUR&dummy=%C3%A9%26%25%3D')
    end
  end
end
