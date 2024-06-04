#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/additional_order_input'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/customer'
require 'worldline/connect/sdk/v1/domain/line_item'
require 'worldline/connect/sdk/v1/domain/order_references'
require 'worldline/connect/sdk/v1/domain/seller'
require 'worldline/connect/sdk/v1/domain/shipping'
require 'worldline/connect/sdk/v1/domain/shopping_cart'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AdditionalOrderInput] additional_input
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money
          # @attr [Worldline::Connect::SDK::V1::Domain::Customer] customer
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::LineItem>] items
          # @attr [Worldline::Connect::SDK::V1::Domain::OrderReferences] references
          # @attr [Worldline::Connect::SDK::V1::Domain::Seller] seller
          # @attr [Worldline::Connect::SDK::V1::Domain::Shipping] shipping
          # @attr [Worldline::Connect::SDK::V1::Domain::ShoppingCart] shopping_cart
          class Order < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :additional_input

            attr_accessor :amount_of_money

            attr_accessor :customer

            # @deprecated Use shoppingCart.items instead
            attr_accessor :items

            attr_accessor :references

            # @deprecated Use Merchant.seller instead
            attr_accessor :seller

            attr_accessor :shipping

            attr_accessor :shopping_cart

            # @return (Hash)
            def to_h
              hash = super
              hash['additionalInput'] = @additional_input.to_h unless @additional_input.nil?
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['items'] = @items.collect{|val| val.to_h} unless @items.nil?
              hash['references'] = @references.to_h unless @references.nil?
              hash['seller'] = @seller.to_h unless @seller.nil?
              hash['shipping'] = @shipping.to_h unless @shipping.nil?
              hash['shoppingCart'] = @shopping_cart.to_h unless @shopping_cart.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'additionalInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['additionalInput']] unless hash['additionalInput'].is_a? Hash
                @additional_input = Worldline::Connect::SDK::V1::Domain::AdditionalOrderInput.new_from_hash(hash['additionalInput'])
              end
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'customer'
                raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
                @customer = Worldline::Connect::SDK::V1::Domain::Customer.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'items'
                raise TypeError, "value '%s' is not an Array" % [hash['items']] unless hash['items'].is_a? Array
                @items = []
                hash['items'].each do |e|
                  @items << Worldline::Connect::SDK::V1::Domain::LineItem.new_from_hash(e)
                end
              end
              if hash.has_key? 'references'
                raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
                @references = Worldline::Connect::SDK::V1::Domain::OrderReferences.new_from_hash(hash['references'])
              end
              if hash.has_key? 'seller'
                raise TypeError, "value '%s' is not a Hash" % [hash['seller']] unless hash['seller'].is_a? Hash
                @seller = Worldline::Connect::SDK::V1::Domain::Seller.new_from_hash(hash['seller'])
              end
              if hash.has_key? 'shipping'
                raise TypeError, "value '%s' is not a Hash" % [hash['shipping']] unless hash['shipping'].is_a? Hash
                @shipping = Worldline::Connect::SDK::V1::Domain::Shipping.new_from_hash(hash['shipping'])
              end
              if hash.has_key? 'shoppingCart'
                raise TypeError, "value '%s' is not a Hash" % [hash['shoppingCart']] unless hash['shoppingCart'].is_a? Hash
                @shopping_cart = Worldline::Connect::SDK::V1::Domain::ShoppingCart.new_from_hash(hash['shoppingCart'])
              end
            end
          end
        end
      end
    end
  end
end
