#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/api_resource'
require 'worldline/connect/sdk/v1/merchant/merchant_client'

module Worldline
  module Connect
    module SDK
      module V1
        # V1 client.
        #
        # Thread safe.
        class V1Client < Worldline::Connect::SDK::ApiResource

          # @param parent       [Worldline::Connect::SDK::ApiResource]
          # @param path_context [Hash, nil]
          def initialize(parent, path_context)
            super(parent: parent, path_context: path_context)
          end

          # Resource /!{merchantId}
          # @param merchant_id [String]
          # @return [Worldline::Connect::SDK::V1::Merchant::MerchantClient]
          def merchant(merchant_id)
            Worldline::Connect::SDK::V1::Merchant::MerchantClient.new(self, {
              'merchantId'.freeze => merchant_id,
            })
          end
        end
      end
    end
  end
end
