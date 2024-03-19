require 'spec_helper'

include Worldline::Connect::SDK

describe Webhooks::Webhooks do
  let(:webhooks_helper) { Webhooks::Webhooks.v1.create_helper(Webhooks::InMemorySecretKeyStore.instance) }

  context 'construction' do
    it 'uses the default marshaller' do
      expect(webhooks_helper.instance_variable_get(:@marshaller)).to eq(Worldline::Connect::SDK::JSON::DefaultMarshaller.instance)
    end

    it 'uses the given key store' do
      signature_validator = webhooks_helper.instance_variable_get(:@signature_validator)
      expect(signature_validator.instance_variable_get(:@secret_key_store)).to eq(Webhooks::InMemorySecretKeyStore.instance)
    end
  end
end
