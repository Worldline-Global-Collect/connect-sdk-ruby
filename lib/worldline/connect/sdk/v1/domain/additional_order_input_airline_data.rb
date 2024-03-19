#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/airline_data'
require 'worldline/connect/sdk/v1/domain/lodging_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AirlineData] airline_data
          # @attr [Worldline::Connect::SDK::V1::Domain::LodgingData] lodging_data
          class AdditionalOrderInputAirlineData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :airline_data

            attr_accessor :lodging_data

            # @return (Hash)
            def to_h
              hash = super
              hash['airlineData'] = @airline_data.to_h unless @airline_data.nil?
              hash['lodgingData'] = @lodging_data.to_h unless @lodging_data.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'airlineData'
                raise TypeError, "value '%s' is not a Hash" % [hash['airlineData']] unless hash['airlineData'].is_a? Hash
                @airline_data = Worldline::Connect::SDK::V1::Domain::AirlineData.new_from_hash(hash['airlineData'])
              end
              if hash.has_key? 'lodgingData'
                raise TypeError, "value '%s' is not a Hash" % [hash['lodgingData']] unless hash['lodgingData'].is_a? Hash
                @lodging_data = Worldline::Connect::SDK::V1::Domain::LodgingData.new_from_hash(hash['lodgingData'])
              end
            end
          end
        end
      end
    end
  end
end
