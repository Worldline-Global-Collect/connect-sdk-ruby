#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/json/default_marshaller'
require 'worldline/connect/sdk/v1/webhooks/webhooks_helper'

module Worldline
  module Connect
    module SDK
      module V1
        module Webhooks
          # Worldline Global Collect platform factory for several v1 webhooks components
          class V1WebhooksFactory

            # Creates a WebhooksHelper that uses the given SecretKeyStore.
            #
            # @return [Worldline::Connect::SDK::V1::Webhooks::WebhooksHelper]
            def create_helper(secret_key_store, marshaller: nil)
              marshaller = DefaultMarshaller.instance unless marshaller
              WebhooksHelper.new(marshaller, secret_key_store)
            end
          end
        end
      end
    end
  end
end
