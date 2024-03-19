#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/additional_order_input_airline_data'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/customer_risk_assessment'
require 'worldline/connect/sdk/v1/domain/shipping_risk_assessment'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AdditionalOrderInputAirlineData] additional_input
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money
          # @attr [Worldline::Connect::SDK::V1::Domain::CustomerRiskAssessment] customer
          # @attr [Worldline::Connect::SDK::V1::Domain::ShippingRiskAssessment] shipping
          class OrderRiskAssessment < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :additional_input

            attr_accessor :amount_of_money

            attr_accessor :customer

            attr_accessor :shipping

            # @return (Hash)
            def to_h
              hash = super
              hash['additionalInput'] = @additional_input.to_h unless @additional_input.nil?
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['shipping'] = @shipping.to_h unless @shipping.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'additionalInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['additionalInput']] unless hash['additionalInput'].is_a? Hash
                @additional_input = Worldline::Connect::SDK::V1::Domain::AdditionalOrderInputAirlineData.new_from_hash(hash['additionalInput'])
              end
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'customer'
                raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
                @customer = Worldline::Connect::SDK::V1::Domain::CustomerRiskAssessment.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'shipping'
                raise TypeError, "value '%s' is not a Hash" % [hash['shipping']] unless hash['shipping'].is_a? Hash
                @shipping = Worldline::Connect::SDK::V1::Domain::ShippingRiskAssessment.new_from_hash(hash['shipping'])
              end
            end
          end
        end
      end
    end
  end
end
