#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_breakdown'
require 'worldline/connect/sdk/v1/domain/gift_card_purchase'
require 'worldline/connect/sdk/v1/domain/line_item'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::AmountBreakdown>] amount_breakdown
          # @attr [Worldline::Connect::SDK::V1::Domain::GiftCardPurchase] gift_card_purchase
          # @attr [true/false] is_pre_order
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::LineItem>] items
          # @attr [String] pre_order_item_availability_date
          # @attr [true/false] re_order_indicator
          class ShoppingCart < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount_breakdown

            attr_accessor :gift_card_purchase

            attr_accessor :is_pre_order

            attr_accessor :items

            attr_accessor :pre_order_item_availability_date

            attr_accessor :re_order_indicator

            # @return (Hash)
            def to_h
              hash = super
              hash['amountBreakdown'] = @amount_breakdown.collect{|val| val.to_h} unless @amount_breakdown.nil?
              hash['giftCardPurchase'] = @gift_card_purchase.to_h unless @gift_card_purchase.nil?
              hash['isPreOrder'] = @is_pre_order unless @is_pre_order.nil?
              hash['items'] = @items.collect{|val| val.to_h} unless @items.nil?
              hash['preOrderItemAvailabilityDate'] = @pre_order_item_availability_date unless @pre_order_item_availability_date.nil?
              hash['reOrderIndicator'] = @re_order_indicator unless @re_order_indicator.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountBreakdown'
                raise TypeError, "value '%s' is not an Array" % [hash['amountBreakdown']] unless hash['amountBreakdown'].is_a? Array
                @amount_breakdown = []
                hash['amountBreakdown'].each do |e|
                  @amount_breakdown << Worldline::Connect::SDK::V1::Domain::AmountBreakdown.new_from_hash(e)
                end
              end
              if hash.has_key? 'giftCardPurchase'
                raise TypeError, "value '%s' is not a Hash" % [hash['giftCardPurchase']] unless hash['giftCardPurchase'].is_a? Hash
                @gift_card_purchase = Worldline::Connect::SDK::V1::Domain::GiftCardPurchase.new_from_hash(hash['giftCardPurchase'])
              end
              if hash.has_key? 'isPreOrder'
                @is_pre_order = hash['isPreOrder']
              end
              if hash.has_key? 'items'
                raise TypeError, "value '%s' is not an Array" % [hash['items']] unless hash['items'].is_a? Array
                @items = []
                hash['items'].each do |e|
                  @items << Worldline::Connect::SDK::V1::Domain::LineItem.new_from_hash(e)
                end
              end
              if hash.has_key? 'preOrderItemAvailabilityDate'
                @pre_order_item_availability_date = hash['preOrderItemAvailabilityDate']
              end
              if hash.has_key? 'reOrderIndicator'
                @re_order_indicator = hash['reOrderIndicator']
              end
            end
          end
        end
      end
    end
  end
end
