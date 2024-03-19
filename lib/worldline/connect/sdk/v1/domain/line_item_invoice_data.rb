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
          # @attr [String] description
          # @attr [String] merchant_linenumber
          # @attr [String] merchant_pagenumber
          # @attr [String] nr_of_items
          # @attr [Integer] price_per_item
          class LineItemInvoiceData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :description

            attr_accessor :merchant_linenumber

            attr_accessor :merchant_pagenumber

            attr_accessor :nr_of_items

            attr_accessor :price_per_item

            # @return (Hash)
            def to_h
              hash = super
              hash['description'] = @description unless @description.nil?
              hash['merchantLinenumber'] = @merchant_linenumber unless @merchant_linenumber.nil?
              hash['merchantPagenumber'] = @merchant_pagenumber unless @merchant_pagenumber.nil?
              hash['nrOfItems'] = @nr_of_items unless @nr_of_items.nil?
              hash['pricePerItem'] = @price_per_item unless @price_per_item.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'description'
                @description = hash['description']
              end
              if hash.has_key? 'merchantLinenumber'
                @merchant_linenumber = hash['merchantLinenumber']
              end
              if hash.has_key? 'merchantPagenumber'
                @merchant_pagenumber = hash['merchantPagenumber']
              end
              if hash.has_key? 'nrOfItems'
                @nr_of_items = hash['nrOfItems']
              end
              if hash.has_key? 'pricePerItem'
                @price_per_item = hash['pricePerItem']
              end
            end
          end
        end
      end
    end
  end
end
