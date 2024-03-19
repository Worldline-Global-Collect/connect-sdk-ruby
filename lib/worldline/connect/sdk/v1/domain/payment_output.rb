#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/bank_transfer_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/card_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/cash_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/e_invoice_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/invoice_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/mobile_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/non_sepa_direct_debit_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/order_output'
require 'worldline/connect/sdk/v1/domain/redirect_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/sepa_direct_debit_payment_method_specific_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Integer] amount_paid
          # @attr [Integer] amount_reversed
          # @attr [Worldline::Connect::SDK::V1::Domain::BankTransferPaymentMethodSpecificOutput] bank_transfer_payment_method_specific_output
          # @attr [Worldline::Connect::SDK::V1::Domain::CardPaymentMethodSpecificOutput] card_payment_method_specific_output
          # @attr [Worldline::Connect::SDK::V1::Domain::CashPaymentMethodSpecificOutput] cash_payment_method_specific_output
          # @attr [Worldline::Connect::SDK::V1::Domain::NonSepaDirectDebitPaymentMethodSpecificOutput] direct_debit_payment_method_specific_output
          # @attr [Worldline::Connect::SDK::V1::Domain::EInvoicePaymentMethodSpecificOutput] e_invoice_payment_method_specific_output
          # @attr [Worldline::Connect::SDK::V1::Domain::InvoicePaymentMethodSpecificOutput] invoice_payment_method_specific_output
          # @attr [Worldline::Connect::SDK::V1::Domain::MobilePaymentMethodSpecificOutput] mobile_payment_method_specific_output
          # @attr [String] payment_method
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentMethodSpecificOutput] redirect_payment_method_specific_output
          # @attr [String] reversal_reason
          # @attr [Worldline::Connect::SDK::V1::Domain::SepaDirectDebitPaymentMethodSpecificOutput] sepa_direct_debit_payment_method_specific_output
          class PaymentOutput < Worldline::Connect::SDK::V1::Domain::OrderOutput

            attr_accessor :amount_paid

            attr_accessor :amount_reversed

            attr_accessor :bank_transfer_payment_method_specific_output

            attr_accessor :card_payment_method_specific_output

            attr_accessor :cash_payment_method_specific_output

            attr_accessor :direct_debit_payment_method_specific_output

            attr_accessor :e_invoice_payment_method_specific_output

            attr_accessor :invoice_payment_method_specific_output

            attr_accessor :mobile_payment_method_specific_output

            attr_accessor :payment_method

            attr_accessor :redirect_payment_method_specific_output

            attr_accessor :reversal_reason

            attr_accessor :sepa_direct_debit_payment_method_specific_output

            # @return (Hash)
            def to_h
              hash = super
              hash['amountPaid'] = @amount_paid unless @amount_paid.nil?
              hash['amountReversed'] = @amount_reversed unless @amount_reversed.nil?
              hash['bankTransferPaymentMethodSpecificOutput'] = @bank_transfer_payment_method_specific_output.to_h unless @bank_transfer_payment_method_specific_output.nil?
              hash['cardPaymentMethodSpecificOutput'] = @card_payment_method_specific_output.to_h unless @card_payment_method_specific_output.nil?
              hash['cashPaymentMethodSpecificOutput'] = @cash_payment_method_specific_output.to_h unless @cash_payment_method_specific_output.nil?
              hash['directDebitPaymentMethodSpecificOutput'] = @direct_debit_payment_method_specific_output.to_h unless @direct_debit_payment_method_specific_output.nil?
              hash['eInvoicePaymentMethodSpecificOutput'] = @e_invoice_payment_method_specific_output.to_h unless @e_invoice_payment_method_specific_output.nil?
              hash['invoicePaymentMethodSpecificOutput'] = @invoice_payment_method_specific_output.to_h unless @invoice_payment_method_specific_output.nil?
              hash['mobilePaymentMethodSpecificOutput'] = @mobile_payment_method_specific_output.to_h unless @mobile_payment_method_specific_output.nil?
              hash['paymentMethod'] = @payment_method unless @payment_method.nil?
              hash['redirectPaymentMethodSpecificOutput'] = @redirect_payment_method_specific_output.to_h unless @redirect_payment_method_specific_output.nil?
              hash['reversalReason'] = @reversal_reason unless @reversal_reason.nil?
              hash['sepaDirectDebitPaymentMethodSpecificOutput'] = @sepa_direct_debit_payment_method_specific_output.to_h unless @sepa_direct_debit_payment_method_specific_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountPaid'
                @amount_paid = hash['amountPaid']
              end
              if hash.has_key? 'amountReversed'
                @amount_reversed = hash['amountReversed']
              end
              if hash.has_key? 'bankTransferPaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankTransferPaymentMethodSpecificOutput']] unless hash['bankTransferPaymentMethodSpecificOutput'].is_a? Hash
                @bank_transfer_payment_method_specific_output = Worldline::Connect::SDK::V1::Domain::BankTransferPaymentMethodSpecificOutput.new_from_hash(hash['bankTransferPaymentMethodSpecificOutput'])
              end
              if hash.has_key? 'cardPaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificOutput']] unless hash['cardPaymentMethodSpecificOutput'].is_a? Hash
                @card_payment_method_specific_output = Worldline::Connect::SDK::V1::Domain::CardPaymentMethodSpecificOutput.new_from_hash(hash['cardPaymentMethodSpecificOutput'])
              end
              if hash.has_key? 'cashPaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['cashPaymentMethodSpecificOutput']] unless hash['cashPaymentMethodSpecificOutput'].is_a? Hash
                @cash_payment_method_specific_output = Worldline::Connect::SDK::V1::Domain::CashPaymentMethodSpecificOutput.new_from_hash(hash['cashPaymentMethodSpecificOutput'])
              end
              if hash.has_key? 'directDebitPaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['directDebitPaymentMethodSpecificOutput']] unless hash['directDebitPaymentMethodSpecificOutput'].is_a? Hash
                @direct_debit_payment_method_specific_output = Worldline::Connect::SDK::V1::Domain::NonSepaDirectDebitPaymentMethodSpecificOutput.new_from_hash(hash['directDebitPaymentMethodSpecificOutput'])
              end
              if hash.has_key? 'eInvoicePaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['eInvoicePaymentMethodSpecificOutput']] unless hash['eInvoicePaymentMethodSpecificOutput'].is_a? Hash
                @e_invoice_payment_method_specific_output = Worldline::Connect::SDK::V1::Domain::EInvoicePaymentMethodSpecificOutput.new_from_hash(hash['eInvoicePaymentMethodSpecificOutput'])
              end
              if hash.has_key? 'invoicePaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['invoicePaymentMethodSpecificOutput']] unless hash['invoicePaymentMethodSpecificOutput'].is_a? Hash
                @invoice_payment_method_specific_output = Worldline::Connect::SDK::V1::Domain::InvoicePaymentMethodSpecificOutput.new_from_hash(hash['invoicePaymentMethodSpecificOutput'])
              end
              if hash.has_key? 'mobilePaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['mobilePaymentMethodSpecificOutput']] unless hash['mobilePaymentMethodSpecificOutput'].is_a? Hash
                @mobile_payment_method_specific_output = Worldline::Connect::SDK::V1::Domain::MobilePaymentMethodSpecificOutput.new_from_hash(hash['mobilePaymentMethodSpecificOutput'])
              end
              if hash.has_key? 'paymentMethod'
                @payment_method = hash['paymentMethod']
              end
              if hash.has_key? 'redirectPaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['redirectPaymentMethodSpecificOutput']] unless hash['redirectPaymentMethodSpecificOutput'].is_a? Hash
                @redirect_payment_method_specific_output = Worldline::Connect::SDK::V1::Domain::RedirectPaymentMethodSpecificOutput.new_from_hash(hash['redirectPaymentMethodSpecificOutput'])
              end
              if hash.has_key? 'reversalReason'
                @reversal_reason = hash['reversalReason']
              end
              if hash.has_key? 'sepaDirectDebitPaymentMethodSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebitPaymentMethodSpecificOutput']] unless hash['sepaDirectDebitPaymentMethodSpecificOutput'].is_a? Hash
                @sepa_direct_debit_payment_method_specific_output = Worldline::Connect::SDK::V1::Domain::SepaDirectDebitPaymentMethodSpecificOutput.new_from_hash(hash['sepaDirectDebitPaymentMethodSpecificOutput'])
              end
            end
          end
        end
      end
    end
  end
end
