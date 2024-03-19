#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/key_value_pair'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] displayed_data_type
          # @attr [String] rendering_data
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::KeyValuePair>] show_data
          class DisplayedData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :displayed_data_type

            attr_accessor :rendering_data

            attr_accessor :show_data

            # @return (Hash)
            def to_h
              hash = super
              hash['displayedDataType'] = @displayed_data_type unless @displayed_data_type.nil?
              hash['renderingData'] = @rendering_data unless @rendering_data.nil?
              hash['showData'] = @show_data.collect{|val| val.to_h} unless @show_data.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'displayedDataType'
                @displayed_data_type = hash['displayedDataType']
              end
              if hash.has_key? 'renderingData'
                @rendering_data = hash['renderingData']
              end
              if hash.has_key? 'showData'
                raise TypeError, "value '%s' is not an Array" % [hash['showData']] unless hash['showData'].is_a? Array
                @show_data = []
                hash['showData'].each do |e|
                  @show_data << Worldline::Connect::SDK::V1::Domain::KeyValuePair.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
