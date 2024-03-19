#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] configuration_id
          class PayoutMerchant < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :configuration_id

            # @return (Hash)
            def to_h
              hash = super
              hash['configurationId'] = @configuration_id unless @configuration_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'configurationId'
                @configuration_id = hash['configurationId']
              end
            end
          end
        end
      end
    end
  end
end
