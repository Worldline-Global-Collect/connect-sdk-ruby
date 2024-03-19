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
          # @attr [String] void_response_id
          class CancelPaymentCardPaymentMethodSpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :void_response_id

            # @return (Hash)
            def to_h
              hash = super
              hash['voidResponseId'] = @void_response_id unless @void_response_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'voidResponseId'
                @void_response_id = hash['voidResponseId']
              end
            end
          end
        end
      end
    end
  end
end
