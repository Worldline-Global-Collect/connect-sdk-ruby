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
          # @attr [Integer] converted_amount
          class ConvertAmount < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :converted_amount

            # @return (Hash)
            def to_h
              hash = super
              hash['convertedAmount'] = @converted_amount unless @converted_amount.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'convertedAmount'
                @converted_amount = hash['convertedAmount']
              end
            end
          end
        end
      end
    end
  end
end
