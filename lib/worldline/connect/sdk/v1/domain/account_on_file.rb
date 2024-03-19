#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/account_on_file_attribute'
require 'worldline/connect/sdk/v1/domain/account_on_file_display_hints'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::AccountOnFileAttribute>] attributes
          # @attr [Worldline::Connect::SDK::V1::Domain::AccountOnFileDisplayHints] display_hints
          # @attr [Integer] id
          # @attr [Integer] payment_product_id
          class AccountOnFile < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :attributes

            attr_accessor :display_hints

            attr_accessor :id

            attr_accessor :payment_product_id

            # @return (Hash)
            def to_h
              hash = super
              hash['attributes'] = @attributes.collect{|val| val.to_h} unless @attributes.nil?
              hash['displayHints'] = @display_hints.to_h unless @display_hints.nil?
              hash['id'] = @id unless @id.nil?
              hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'attributes'
                raise TypeError, "value '%s' is not an Array" % [hash['attributes']] unless hash['attributes'].is_a? Array
                @attributes = []
                hash['attributes'].each do |e|
                  @attributes << Worldline::Connect::SDK::V1::Domain::AccountOnFileAttribute.new_from_hash(e)
                end
              end
              if hash.has_key? 'displayHints'
                raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']] unless hash['displayHints'].is_a? Hash
                @display_hints = Worldline::Connect::SDK::V1::Domain::AccountOnFileDisplayHints.new_from_hash(hash['displayHints'])
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'paymentProductId'
                @payment_product_id = hash['paymentProductId']
              end
            end
          end
        end
      end
    end
  end
end
