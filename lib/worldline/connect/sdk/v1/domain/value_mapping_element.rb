#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payment_product_field_display_element'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::PaymentProductFieldDisplayElement>] display_elements
          # @attr [String] display_name
          # @attr [String] value
          class ValueMappingElement < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :display_elements

            #
            # @deprecated Use displayElements instead with ID 'displayName'
            attr_accessor :display_name

            attr_accessor :value

            # @return (Hash)
            def to_h
              hash = super
              hash['displayElements'] = @display_elements.collect{|val| val.to_h} unless @display_elements.nil?
              hash['displayName'] = @display_name unless @display_name.nil?
              hash['value'] = @value unless @value.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'displayElements'
                raise TypeError, "value '%s' is not an Array" % [hash['displayElements']] unless hash['displayElements'].is_a? Array
                @display_elements = []
                hash['displayElements'].each do |e|
                  @display_elements << Worldline::Connect::SDK::V1::Domain::PaymentProductFieldDisplayElement.new_from_hash(e)
                end
              end
              if hash.has_key? 'displayName'
                @display_name = hash['displayName']
              end
              if hash.has_key? 'value'
                @value = hash['value']
              end
            end
          end
        end
      end
    end
  end
end
