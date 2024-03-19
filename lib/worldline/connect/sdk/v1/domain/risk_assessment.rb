#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/fraud_fields'
require 'worldline/connect/sdk/v1/domain/merchant_risk_assessment'
require 'worldline/connect/sdk/v1/domain/order_risk_assessment'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::FraudFields] fraud_fields
          # @attr [Worldline::Connect::SDK::V1::Domain::MerchantRiskAssessment] merchant
          # @attr [Worldline::Connect::SDK::V1::Domain::OrderRiskAssessment] order
          # @attr [Integer] payment_product_id
          class RiskAssessment < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :fraud_fields

            attr_accessor :merchant

            attr_accessor :order

            attr_accessor :payment_product_id

            # @return (Hash)
            def to_h
              hash = super
              hash['fraudFields'] = @fraud_fields.to_h unless @fraud_fields.nil?
              hash['merchant'] = @merchant.to_h unless @merchant.nil?
              hash['order'] = @order.to_h unless @order.nil?
              hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'fraudFields'
                raise TypeError, "value '%s' is not a Hash" % [hash['fraudFields']] unless hash['fraudFields'].is_a? Hash
                @fraud_fields = Worldline::Connect::SDK::V1::Domain::FraudFields.new_from_hash(hash['fraudFields'])
              end
              if hash.has_key? 'merchant'
                raise TypeError, "value '%s' is not a Hash" % [hash['merchant']] unless hash['merchant'].is_a? Hash
                @merchant = Worldline::Connect::SDK::V1::Domain::MerchantRiskAssessment.new_from_hash(hash['merchant'])
              end
              if hash.has_key? 'order'
                raise TypeError, "value '%s' is not a Hash" % [hash['order']] unless hash['order'].is_a? Hash
                @order = Worldline::Connect::SDK::V1::Domain::OrderRiskAssessment.new_from_hash(hash['order'])
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
