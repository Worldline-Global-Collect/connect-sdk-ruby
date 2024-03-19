#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/complete_payment_card_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/merchant'
require 'worldline/connect/sdk/v1/domain/order'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::CompletePaymentCardPaymentMethodSpecificInput] card_payment_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::Merchant] merchant
          # @attr [Worldline::Connect::SDK::V1::Domain::Order] order
          class CompletePaymentRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :card_payment_method_specific_input

            attr_accessor :merchant

            attr_accessor :order

            # @return (Hash)
            def to_h
              hash = super
              hash['cardPaymentMethodSpecificInput'] = @card_payment_method_specific_input.to_h unless @card_payment_method_specific_input.nil?
              hash['merchant'] = @merchant.to_h unless @merchant.nil?
              hash['order'] = @order.to_h unless @order.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'cardPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificInput']] unless hash['cardPaymentMethodSpecificInput'].is_a? Hash
                @card_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::CompletePaymentCardPaymentMethodSpecificInput.new_from_hash(hash['cardPaymentMethodSpecificInput'])
              end
              if hash.has_key? 'merchant'
                raise TypeError, "value '%s' is not a Hash" % [hash['merchant']] unless hash['merchant'].is_a? Hash
                @merchant = Worldline::Connect::SDK::V1::Domain::Merchant.new_from_hash(hash['merchant'])
              end
              if hash.has_key? 'order'
                raise TypeError, "value '%s' is not a Hash" % [hash['order']] unless hash['order'].is_a? Hash
                @order = Worldline::Connect::SDK::V1::Domain::Order.new_from_hash(hash['order'])
              end
            end
          end
        end
      end
    end
  end
end
