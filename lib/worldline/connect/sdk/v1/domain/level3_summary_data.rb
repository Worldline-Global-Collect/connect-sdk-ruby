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
          # @attr [Integer] duty_amount
          # @attr [Integer] shipping_amount
          # @deprecated Use ShoppingCart.amountBreakdown instead
          class Level3SummaryData < Worldline::Connect::SDK::Domain::DataObject

            # @deprecated Use ShoppingCart.amountBreakdown with type DISCOUNT instead
            attr_accessor :discount_amount

            # @deprecated Use ShoppingCart.amountBreakdown with type DUTY instead
            attr_accessor :duty_amount

            # @deprecated Use ShoppingCart.amountBreakdown with type SHIPPING instead
            attr_accessor :shipping_amount

            # @return (Hash)
            def to_h
              hash = super
              hash['discountAmount'] = @discount_amount unless @discount_amount.nil?
              hash['dutyAmount'] = @duty_amount unless @duty_amount.nil?
              hash['shippingAmount'] = @shipping_amount unless @shipping_amount.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'discountAmount'
                @discount_amount = hash['discountAmount']
              end
              if hash.has_key? 'dutyAmount'
                @duty_amount = hash['dutyAmount']
              end
              if hash.has_key? 'shippingAmount'
                @shipping_amount = hash['shippingAmount']
              end
            end
          end
        end
      end
    end
  end
end
