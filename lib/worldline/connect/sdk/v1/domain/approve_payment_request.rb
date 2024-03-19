#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/approve_payment_non_sepa_direct_debit_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/approve_payment_sepa_direct_debit_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/order_approve_payment'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Integer] amount
          # @attr [Worldline::Connect::SDK::V1::Domain::ApprovePaymentNonSepaDirectDebitPaymentMethodSpecificInput] direct_debit_payment_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::OrderApprovePayment] order
          # @attr [Worldline::Connect::SDK::V1::Domain::ApprovePaymentSepaDirectDebitPaymentMethodSpecificInput] sepa_direct_debit_payment_method_specific_input
          class ApprovePaymentRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount

            attr_accessor :direct_debit_payment_method_specific_input

            attr_accessor :order

            attr_accessor :sepa_direct_debit_payment_method_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['amount'] = @amount unless @amount.nil?
              hash['directDebitPaymentMethodSpecificInput'] = @direct_debit_payment_method_specific_input.to_h unless @direct_debit_payment_method_specific_input.nil?
              hash['order'] = @order.to_h unless @order.nil?
              hash['sepaDirectDebitPaymentMethodSpecificInput'] = @sepa_direct_debit_payment_method_specific_input.to_h unless @sepa_direct_debit_payment_method_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amount'
                @amount = hash['amount']
              end
              if hash.has_key? 'directDebitPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['directDebitPaymentMethodSpecificInput']] unless hash['directDebitPaymentMethodSpecificInput'].is_a? Hash
                @direct_debit_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::ApprovePaymentNonSepaDirectDebitPaymentMethodSpecificInput.new_from_hash(hash['directDebitPaymentMethodSpecificInput'])
              end
              if hash.has_key? 'order'
                raise TypeError, "value '%s' is not a Hash" % [hash['order']] unless hash['order'].is_a? Hash
                @order = Worldline::Connect::SDK::V1::Domain::OrderApprovePayment.new_from_hash(hash['order'])
              end
              if hash.has_key? 'sepaDirectDebitPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebitPaymentMethodSpecificInput']] unless hash['sepaDirectDebitPaymentMethodSpecificInput'].is_a? Hash
                @sepa_direct_debit_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::ApprovePaymentSepaDirectDebitPaymentMethodSpecificInput.new_from_hash(hash['sepaDirectDebitPaymentMethodSpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
