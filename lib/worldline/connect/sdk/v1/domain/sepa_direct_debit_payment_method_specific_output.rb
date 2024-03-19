#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/fraud_results'
require 'worldline/connect/sdk/v1/domain/payment_product771_specific_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::FraudResults] fraud_results
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProduct771SpecificOutput] payment_product771_specific_output
          # @attr [String] token
          class SepaDirectDebitPaymentMethodSpecificOutput < Worldline::Connect::SDK::V1::Domain::AbstractPaymentMethodSpecificOutput

            attr_accessor :fraud_results

            attr_accessor :payment_product771_specific_output

            attr_accessor :token

            # @return (Hash)
            def to_h
              hash = super
              hash['fraudResults'] = @fraud_results.to_h unless @fraud_results.nil?
              hash['paymentProduct771SpecificOutput'] = @payment_product771_specific_output.to_h unless @payment_product771_specific_output.nil?
              hash['token'] = @token unless @token.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'fraudResults'
                raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']] unless hash['fraudResults'].is_a? Hash
                @fraud_results = Worldline::Connect::SDK::V1::Domain::FraudResults.new_from_hash(hash['fraudResults'])
              end
              if hash.has_key? 'paymentProduct771SpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct771SpecificOutput']] unless hash['paymentProduct771SpecificOutput'].is_a? Hash
                @payment_product771_specific_output = Worldline::Connect::SDK::V1::Domain::PaymentProduct771SpecificOutput.new_from_hash(hash['paymentProduct771SpecificOutput'])
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
