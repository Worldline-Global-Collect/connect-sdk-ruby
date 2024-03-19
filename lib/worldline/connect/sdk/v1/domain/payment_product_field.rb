#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payment_product_field_data_restrictions'
require 'worldline/connect/sdk/v1/domain/payment_product_field_display_hints'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProductFieldDataRestrictions] data_restrictions
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProductFieldDisplayHints] display_hints
          # @attr [String] id
          # @attr [String] type
          # @attr [true/false] used_for_lookup
          class PaymentProductField < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :data_restrictions

            attr_accessor :display_hints

            attr_accessor :id

            attr_accessor :type

            attr_accessor :used_for_lookup

            # @return (Hash)
            def to_h
              hash = super
              hash['dataRestrictions'] = @data_restrictions.to_h unless @data_restrictions.nil?
              hash['displayHints'] = @display_hints.to_h unless @display_hints.nil?
              hash['id'] = @id unless @id.nil?
              hash['type'] = @type unless @type.nil?
              hash['usedForLookup'] = @used_for_lookup unless @used_for_lookup.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'dataRestrictions'
                raise TypeError, "value '%s' is not a Hash" % [hash['dataRestrictions']] unless hash['dataRestrictions'].is_a? Hash
                @data_restrictions = Worldline::Connect::SDK::V1::Domain::PaymentProductFieldDataRestrictions.new_from_hash(hash['dataRestrictions'])
              end
              if hash.has_key? 'displayHints'
                raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']] unless hash['displayHints'].is_a? Hash
                @display_hints = Worldline::Connect::SDK::V1::Domain::PaymentProductFieldDisplayHints.new_from_hash(hash['displayHints'])
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'type'
                @type = hash['type']
              end
              if hash.has_key? 'usedForLookup'
                @used_for_lookup = hash['usedForLookup']
              end
            end
          end
        end
      end
    end
  end
end
