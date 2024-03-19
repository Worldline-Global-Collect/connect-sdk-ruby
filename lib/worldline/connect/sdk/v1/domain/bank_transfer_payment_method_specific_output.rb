#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/fraud_results'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::FraudResults] fraud_results
          class BankTransferPaymentMethodSpecificOutput < Worldline::Connect::SDK::V1::Domain::AbstractPaymentMethodSpecificOutput

            attr_accessor :fraud_results

            # @return (Hash)
            def to_h
              hash = super
              hash['fraudResults'] = @fraud_results.to_h unless @fraud_results.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'fraudResults'
                raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']] unless hash['fraudResults'].is_a? Hash
                @fraud_results = Worldline::Connect::SDK::V1::Domain::FraudResults.new_from_hash(hash['fraudResults'])
              end
            end
          end
        end
      end
    end
  end
end
