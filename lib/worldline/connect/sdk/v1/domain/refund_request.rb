#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/bank_refund_method_specific_input'
require 'worldline/connect/sdk/v1/domain/refund_customer'
require 'worldline/connect/sdk/v1/domain/refund_references'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money
          # @attr [Worldline::Connect::SDK::V1::Domain::BankRefundMethodSpecificInput] bank_refund_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::RefundCustomer] customer
          # @attr [String] refund_date
          # @attr [String] refund_reason
          # @attr [Worldline::Connect::SDK::V1::Domain::RefundReferences] refund_references
          class RefundRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount_of_money

            attr_accessor :bank_refund_method_specific_input

            attr_accessor :customer

            attr_accessor :refund_date

            attr_accessor :refund_reason

            attr_accessor :refund_references

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['bankRefundMethodSpecificInput'] = @bank_refund_method_specific_input.to_h unless @bank_refund_method_specific_input.nil?
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['refundDate'] = @refund_date unless @refund_date.nil?
              hash['refundReason'] = @refund_reason unless @refund_reason.nil?
              hash['refundReferences'] = @refund_references.to_h unless @refund_references.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'bankRefundMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankRefundMethodSpecificInput']] unless hash['bankRefundMethodSpecificInput'].is_a? Hash
                @bank_refund_method_specific_input = Worldline::Connect::SDK::V1::Domain::BankRefundMethodSpecificInput.new_from_hash(hash['bankRefundMethodSpecificInput'])
              end
              if hash.has_key? 'customer'
                raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
                @customer = Worldline::Connect::SDK::V1::Domain::RefundCustomer.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'refundDate'
                @refund_date = hash['refundDate']
              end
              if hash.has_key? 'refundReason'
                @refund_reason = hash['refundReason']
              end
              if hash.has_key? 'refundReferences'
                raise TypeError, "value '%s' is not a Hash" % [hash['refundReferences']] unless hash['refundReferences'].is_a? Hash
                @refund_references = Worldline::Connect::SDK::V1::Domain::RefundReferences.new_from_hash(hash['refundReferences'])
              end
            end
          end
        end
      end
    end
  end
end
