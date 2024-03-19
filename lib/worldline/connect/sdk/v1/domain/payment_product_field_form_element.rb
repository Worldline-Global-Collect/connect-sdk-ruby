#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/value_mapping_element'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] type
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::ValueMappingElement>] value_mapping
          class PaymentProductFieldFormElement < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :type

            attr_accessor :value_mapping

            # @return (Hash)
            def to_h
              hash = super
              hash['type'] = @type unless @type.nil?
              hash['valueMapping'] = @value_mapping.collect{|val| val.to_h} unless @value_mapping.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'type'
                @type = hash['type']
              end
              if hash.has_key? 'valueMapping'
                raise TypeError, "value '%s' is not an Array" % [hash['valueMapping']] unless hash['valueMapping'].is_a? Array
                @value_mapping = []
                hash['valueMapping'].each do |e|
                  @value_mapping << Worldline::Connect::SDK::V1::Domain::ValueMappingElement.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
