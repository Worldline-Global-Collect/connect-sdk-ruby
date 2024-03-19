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
          # @attr [String] third_party_status
          class ThirdPartyStatusResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :third_party_status

            # @return (Hash)
            def to_h
              hash = super
              hash['thirdPartyStatus'] = @third_party_status unless @third_party_status.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'thirdPartyStatus'
                @third_party_status = hash['thirdPartyStatus']
              end
            end
          end
        end
      end
    end
  end
end
