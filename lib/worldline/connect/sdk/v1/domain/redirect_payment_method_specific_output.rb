#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/bank_account_bban'
require 'worldline/connect/sdk/v1/domain/bank_account_iban'
require 'worldline/connect/sdk/v1/domain/fraud_results'
require 'worldline/connect/sdk/v1/domain/payment_product3201_specific_output'
require 'worldline/connect/sdk/v1/domain/payment_product806_specific_output'
require 'worldline/connect/sdk/v1/domain/payment_product840_specific_output'
require 'worldline/connect/sdk/v1/domain/payment_product866_specific_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::BankAccountBban] bank_account_bban
          # @attr [Worldline::Connect::SDK::V1::Domain::BankAccountIban] bank_account_iban
          # @attr [String] bic
          # @attr [Worldline::Connect::SDK::V1::Domain::FraudResults] fraud_results
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProduct3201SpecificOutput] payment_product3201_specific_output
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProduct806SpecificOutput] payment_product806_specific_output
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProduct840SpecificOutput] payment_product840_specific_output
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProduct866SpecificOutput] payment_product866_specific_output
          # @attr [String] token
          class RedirectPaymentMethodSpecificOutput < Worldline::Connect::SDK::V1::Domain::AbstractPaymentMethodSpecificOutput

            attr_accessor :bank_account_bban

            attr_accessor :bank_account_iban

            attr_accessor :bic

            attr_accessor :fraud_results

            attr_accessor :payment_product3201_specific_output

            attr_accessor :payment_product806_specific_output

            attr_accessor :payment_product840_specific_output

            attr_accessor :payment_product866_specific_output

            attr_accessor :token

            # @return (Hash)
            def to_h
              hash = super
              hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
              hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
              hash['bic'] = @bic unless @bic.nil?
              hash['fraudResults'] = @fraud_results.to_h unless @fraud_results.nil?
              hash['paymentProduct3201SpecificOutput'] = @payment_product3201_specific_output.to_h unless @payment_product3201_specific_output.nil?
              hash['paymentProduct806SpecificOutput'] = @payment_product806_specific_output.to_h unless @payment_product806_specific_output.nil?
              hash['paymentProduct840SpecificOutput'] = @payment_product840_specific_output.to_h unless @payment_product840_specific_output.nil?
              hash['paymentProduct866SpecificOutput'] = @payment_product866_specific_output.to_h unless @payment_product866_specific_output.nil?
              hash['token'] = @token unless @token.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bankAccountBban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']] unless hash['bankAccountBban'].is_a? Hash
                @bank_account_bban = Worldline::Connect::SDK::V1::Domain::BankAccountBban.new_from_hash(hash['bankAccountBban'])
              end
              if hash.has_key? 'bankAccountIban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
                @bank_account_iban = Worldline::Connect::SDK::V1::Domain::BankAccountIban.new_from_hash(hash['bankAccountIban'])
              end
              if hash.has_key? 'bic'
                @bic = hash['bic']
              end
              if hash.has_key? 'fraudResults'
                raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']] unless hash['fraudResults'].is_a? Hash
                @fraud_results = Worldline::Connect::SDK::V1::Domain::FraudResults.new_from_hash(hash['fraudResults'])
              end
              if hash.has_key? 'paymentProduct3201SpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct3201SpecificOutput']] unless hash['paymentProduct3201SpecificOutput'].is_a? Hash
                @payment_product3201_specific_output = Worldline::Connect::SDK::V1::Domain::PaymentProduct3201SpecificOutput.new_from_hash(hash['paymentProduct3201SpecificOutput'])
              end
              if hash.has_key? 'paymentProduct806SpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct806SpecificOutput']] unless hash['paymentProduct806SpecificOutput'].is_a? Hash
                @payment_product806_specific_output = Worldline::Connect::SDK::V1::Domain::PaymentProduct806SpecificOutput.new_from_hash(hash['paymentProduct806SpecificOutput'])
              end
              if hash.has_key? 'paymentProduct840SpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificOutput']] unless hash['paymentProduct840SpecificOutput'].is_a? Hash
                @payment_product840_specific_output = Worldline::Connect::SDK::V1::Domain::PaymentProduct840SpecificOutput.new_from_hash(hash['paymentProduct840SpecificOutput'])
              end
              if hash.has_key? 'paymentProduct866SpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct866SpecificOutput']] unless hash['paymentProduct866SpecificOutput'].is_a? Hash
                @payment_product866_specific_output = Worldline::Connect::SDK::V1::Domain::PaymentProduct866SpecificOutput.new_from_hash(hash['paymentProduct866SpecificOutput'])
              end
              if hash.has_key? 'token'
                @token = hash['token']
              end
            end
          end
        end
      end
    end
  end
end
