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
          # @attr [String] method_details
          # @attr [Integer] method_speed
          # @attr [Integer] method_type
          # @deprecated No replacement
          class FraudFieldsShippingDetails < Worldline::Connect::SDK::Domain::DataObject

            # @deprecated No replacement
            attr_accessor :method_details

            # @deprecated No replacement
            attr_accessor :method_speed

            # @deprecated No replacement
            attr_accessor :method_type

            # @return (Hash)
            def to_h
              hash = super
              hash['methodDetails'] = @method_details unless @method_details.nil?
              hash['methodSpeed'] = @method_speed unless @method_speed.nil?
              hash['methodType'] = @method_type unless @method_type.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'methodDetails'
                @method_details = hash['methodDetails']
              end
              if hash.has_key? 'methodSpeed'
                @method_speed = hash['methodSpeed']
              end
              if hash.has_key? 'methodType'
                @method_type = hash['methodType']
              end
            end
          end
        end
      end
    end
  end
end
