#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/webhooks/v1_webhooks_factory'

module Worldline
  module Connect
    module SDK
      module Webhooks
        # Worldline Global Collect platform factory for several webhooks components
        module Webhooks

          private

          V1 = Worldline::Connect::SDK::V1::Webhooks::V1WebhooksFactory.new

          public

          # @return [Worldline::Connect::SDK::V1::Webhooks::V1WebhooksFactory]
          def self.v1
            V1
          end
        end
      end
    end
  end
end
