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
          # @attr [String] descriptor
          # @attr [String] merchant_reference
          class RefundReferences < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :descriptor

            attr_accessor :merchant_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['descriptor'] = @descriptor unless @descriptor.nil?
              hash['merchantReference'] = @merchant_reference unless @merchant_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'descriptor'
                @descriptor = hash['descriptor']
              end
              if hash.has_key? 'merchantReference'
                @merchant_reference = hash['merchantReference']
              end
            end
          end
        end
      end
    end
  end
end
