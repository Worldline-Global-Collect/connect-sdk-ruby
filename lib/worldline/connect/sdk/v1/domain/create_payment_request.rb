#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/bank_transfer_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/card_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/cash_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/e_invoice_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/fraud_fields'
require 'worldline/connect/sdk/v1/domain/invoice_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/merchant'
require 'worldline/connect/sdk/v1/domain/mobile_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/non_sepa_direct_debit_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/order'
require 'worldline/connect/sdk/v1/domain/redirect_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/sepa_direct_debit_payment_method_specific_input'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::BankTransferPaymentMethodSpecificInput] bank_transfer_payment_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::CardPaymentMethodSpecificInput] card_payment_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::CashPaymentMethodSpecificInput] cash_payment_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::NonSepaDirectDebitPaymentMethodSpecificInput] direct_debit_payment_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::EInvoicePaymentMethodSpecificInput] e_invoice_payment_method_specific_input
          # @attr [String] encrypted_customer_input
          # @attr [Worldline::Connect::SDK::V1::Domain::FraudFields] fraud_fields
          # @attr [Worldline::Connect::SDK::V1::Domain::InvoicePaymentMethodSpecificInput] invoice_payment_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::Merchant] merchant
          # @attr [Worldline::Connect::SDK::V1::Domain::MobilePaymentMethodSpecificInput] mobile_payment_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::Order] order
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentMethodSpecificInput] redirect_payment_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::SepaDirectDebitPaymentMethodSpecificInput] sepa_direct_debit_payment_method_specific_input
          class CreatePaymentRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :bank_transfer_payment_method_specific_input

            attr_accessor :card_payment_method_specific_input

            attr_accessor :cash_payment_method_specific_input

            attr_accessor :direct_debit_payment_method_specific_input

            attr_accessor :e_invoice_payment_method_specific_input

            attr_accessor :encrypted_customer_input

            attr_accessor :fraud_fields

            attr_accessor :invoice_payment_method_specific_input

            attr_accessor :merchant

            attr_accessor :mobile_payment_method_specific_input

            attr_accessor :order

            attr_accessor :redirect_payment_method_specific_input

            attr_accessor :sepa_direct_debit_payment_method_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['bankTransferPaymentMethodSpecificInput'] = @bank_transfer_payment_method_specific_input.to_h unless @bank_transfer_payment_method_specific_input.nil?
              hash['cardPaymentMethodSpecificInput'] = @card_payment_method_specific_input.to_h unless @card_payment_method_specific_input.nil?
              hash['cashPaymentMethodSpecificInput'] = @cash_payment_method_specific_input.to_h unless @cash_payment_method_specific_input.nil?
              hash['directDebitPaymentMethodSpecificInput'] = @direct_debit_payment_method_specific_input.to_h unless @direct_debit_payment_method_specific_input.nil?
              hash['eInvoicePaymentMethodSpecificInput'] = @e_invoice_payment_method_specific_input.to_h unless @e_invoice_payment_method_specific_input.nil?
              hash['encryptedCustomerInput'] = @encrypted_customer_input unless @encrypted_customer_input.nil?
              hash['fraudFields'] = @fraud_fields.to_h unless @fraud_fields.nil?
              hash['invoicePaymentMethodSpecificInput'] = @invoice_payment_method_specific_input.to_h unless @invoice_payment_method_specific_input.nil?
              hash['merchant'] = @merchant.to_h unless @merchant.nil?
              hash['mobilePaymentMethodSpecificInput'] = @mobile_payment_method_specific_input.to_h unless @mobile_payment_method_specific_input.nil?
              hash['order'] = @order.to_h unless @order.nil?
              hash['redirectPaymentMethodSpecificInput'] = @redirect_payment_method_specific_input.to_h unless @redirect_payment_method_specific_input.nil?
              hash['sepaDirectDebitPaymentMethodSpecificInput'] = @sepa_direct_debit_payment_method_specific_input.to_h unless @sepa_direct_debit_payment_method_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bankTransferPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankTransferPaymentMethodSpecificInput']] unless hash['bankTransferPaymentMethodSpecificInput'].is_a? Hash
                @bank_transfer_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::BankTransferPaymentMethodSpecificInput.new_from_hash(hash['bankTransferPaymentMethodSpecificInput'])
              end
              if hash.has_key? 'cardPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['cardPaymentMethodSpecificInput']] unless hash['cardPaymentMethodSpecificInput'].is_a? Hash
                @card_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::CardPaymentMethodSpecificInput.new_from_hash(hash['cardPaymentMethodSpecificInput'])
              end
              if hash.has_key? 'cashPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['cashPaymentMethodSpecificInput']] unless hash['cashPaymentMethodSpecificInput'].is_a? Hash
                @cash_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::CashPaymentMethodSpecificInput.new_from_hash(hash['cashPaymentMethodSpecificInput'])
              end
              if hash.has_key? 'directDebitPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['directDebitPaymentMethodSpecificInput']] unless hash['directDebitPaymentMethodSpecificInput'].is_a? Hash
                @direct_debit_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::NonSepaDirectDebitPaymentMethodSpecificInput.new_from_hash(hash['directDebitPaymentMethodSpecificInput'])
              end
              if hash.has_key? 'eInvoicePaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['eInvoicePaymentMethodSpecificInput']] unless hash['eInvoicePaymentMethodSpecificInput'].is_a? Hash
                @e_invoice_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::EInvoicePaymentMethodSpecificInput.new_from_hash(hash['eInvoicePaymentMethodSpecificInput'])
              end
              if hash.has_key? 'encryptedCustomerInput'
                @encrypted_customer_input = hash['encryptedCustomerInput']
              end
              if hash.has_key? 'fraudFields'
                raise TypeError, "value '%s' is not a Hash" % [hash['fraudFields']] unless hash['fraudFields'].is_a? Hash
                @fraud_fields = Worldline::Connect::SDK::V1::Domain::FraudFields.new_from_hash(hash['fraudFields'])
              end
              if hash.has_key? 'invoicePaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['invoicePaymentMethodSpecificInput']] unless hash['invoicePaymentMethodSpecificInput'].is_a? Hash
                @invoice_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::InvoicePaymentMethodSpecificInput.new_from_hash(hash['invoicePaymentMethodSpecificInput'])
              end
              if hash.has_key? 'merchant'
                raise TypeError, "value '%s' is not a Hash" % [hash['merchant']] unless hash['merchant'].is_a? Hash
                @merchant = Worldline::Connect::SDK::V1::Domain::Merchant.new_from_hash(hash['merchant'])
              end
              if hash.has_key? 'mobilePaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['mobilePaymentMethodSpecificInput']] unless hash['mobilePaymentMethodSpecificInput'].is_a? Hash
                @mobile_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::MobilePaymentMethodSpecificInput.new_from_hash(hash['mobilePaymentMethodSpecificInput'])
              end
              if hash.has_key? 'order'
                raise TypeError, "value '%s' is not a Hash" % [hash['order']] unless hash['order'].is_a? Hash
                @order = Worldline::Connect::SDK::V1::Domain::Order.new_from_hash(hash['order'])
              end
              if hash.has_key? 'redirectPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['redirectPaymentMethodSpecificInput']] unless hash['redirectPaymentMethodSpecificInput'].is_a? Hash
                @redirect_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentMethodSpecificInput.new_from_hash(hash['redirectPaymentMethodSpecificInput'])
              end
              if hash.has_key? 'sepaDirectDebitPaymentMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebitPaymentMethodSpecificInput']] unless hash['sepaDirectDebitPaymentMethodSpecificInput'].is_a? Hash
                @sepa_direct_debit_payment_method_specific_input = Worldline::Connect::SDK::V1::Domain::SepaDirectDebitPaymentMethodSpecificInput.new_from_hash(hash['sepaDirectDebitPaymentMethodSpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
