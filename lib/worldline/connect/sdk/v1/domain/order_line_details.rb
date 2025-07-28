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
          # @attr [Integer] discount_amount
          # @attr [Integer] google_product_category_id
          # @attr [Integer] line_amount_total
          # @attr [String] naics_commodity_code
          # @attr [String] product_category
          # @attr [String] product_code
          # @attr [String] product_image_url
          # @attr [String] product_name
          # @attr [Integer] product_price
          # @attr [String] product_sku
          # @attr [String] product_type
          # @attr [String] product_url
          # @attr [Integer] quantity
          # @attr [Integer] tax_amount
          # @attr [String] unit
          class OrderLineDetails < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :discount_amount

            attr_accessor :google_product_category_id

            attr_accessor :line_amount_total

            attr_accessor :naics_commodity_code

            attr_accessor :product_category

            attr_accessor :product_code

            attr_accessor :product_image_url

            attr_accessor :product_name

            attr_accessor :product_price

            attr_accessor :product_sku

            attr_accessor :product_type

            attr_accessor :product_url

            attr_accessor :quantity

            attr_accessor :tax_amount

            attr_accessor :unit

            # @return (Hash)
            def to_h
              hash = super
              hash['discountAmount'] = @discount_amount unless @discount_amount.nil?
              hash['googleProductCategoryId'] = @google_product_category_id unless @google_product_category_id.nil?
              hash['lineAmountTotal'] = @line_amount_total unless @line_amount_total.nil?
              hash['naicsCommodityCode'] = @naics_commodity_code unless @naics_commodity_code.nil?
              hash['productCategory'] = @product_category unless @product_category.nil?
              hash['productCode'] = @product_code unless @product_code.nil?
              hash['productImageUrl'] = @product_image_url unless @product_image_url.nil?
              hash['productName'] = @product_name unless @product_name.nil?
              hash['productPrice'] = @product_price unless @product_price.nil?
              hash['productSku'] = @product_sku unless @product_sku.nil?
              hash['productType'] = @product_type unless @product_type.nil?
              hash['productUrl'] = @product_url unless @product_url.nil?
              hash['quantity'] = @quantity unless @quantity.nil?
              hash['taxAmount'] = @tax_amount unless @tax_amount.nil?
              hash['unit'] = @unit unless @unit.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'discountAmount'
                @discount_amount = hash['discountAmount']
              end
              if hash.has_key? 'googleProductCategoryId'
                @google_product_category_id = hash['googleProductCategoryId']
              end
              if hash.has_key? 'lineAmountTotal'
                @line_amount_total = hash['lineAmountTotal']
              end
              if hash.has_key? 'naicsCommodityCode'
                @naics_commodity_code = hash['naicsCommodityCode']
              end
              if hash.has_key? 'productCategory'
                @product_category = hash['productCategory']
              end
              if hash.has_key? 'productCode'
                @product_code = hash['productCode']
              end
              if hash.has_key? 'productImageUrl'
                @product_image_url = hash['productImageUrl']
              end
              if hash.has_key? 'productName'
                @product_name = hash['productName']
              end
              if hash.has_key? 'productPrice'
                @product_price = hash['productPrice']
              end
              if hash.has_key? 'productSku'
                @product_sku = hash['productSku']
              end
              if hash.has_key? 'productType'
                @product_type = hash['productType']
              end
              if hash.has_key? 'productUrl'
                @product_url = hash['productUrl']
              end
              if hash.has_key? 'quantity'
                @quantity = hash['quantity']
              end
              if hash.has_key? 'taxAmount'
                @tax_amount = hash['taxAmount']
              end
              if hash.has_key? 'unit'
                @unit = hash['unit']
              end
            end
          end
        end
      end
    end
  end
end
