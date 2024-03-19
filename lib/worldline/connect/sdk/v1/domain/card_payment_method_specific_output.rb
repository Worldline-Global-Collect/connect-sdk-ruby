#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_payment_method_specific_output'
require 'worldline/connect/sdk/v1/domain/card_essentials'
require 'worldline/connect/sdk/v1/domain/card_fraud_results'
require 'worldline/connect/sdk/v1/domain/three_d_secure_results'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] authorisation_code
          # @attr [Worldline::Connect::SDK::V1::Domain::CardEssentials] card
          # @attr [Worldline::Connect::SDK::V1::Domain::CardFraudResults] fraud_results
          # @attr [String] initial_scheme_transaction_id
          # @attr [String] scheme_transaction_id
          # @attr [Worldline::Connect::SDK::V1::Domain::ThreeDSecureResults] three_d_secure_results
          # @attr [String] token
          class CardPaymentMethodSpecificOutput < Worldline::Connect::SDK::V1::Domain::AbstractPaymentMethodSpecificOutput

            attr_accessor :authorisation_code

            attr_accessor :card

            attr_accessor :fraud_results

            attr_accessor :initial_scheme_transaction_id

            attr_accessor :scheme_transaction_id

            attr_accessor :three_d_secure_results

            attr_accessor :token

            # @return (Hash)
            def to_h
              hash = super
              hash['authorisationCode'] = @authorisation_code unless @authorisation_code.nil?
              hash['card'] = @card.to_h unless @card.nil?
              hash['fraudResults'] = @fraud_results.to_h unless @fraud_results.nil?
              hash['initialSchemeTransactionId'] = @initial_scheme_transaction_id unless @initial_scheme_transaction_id.nil?
              hash['schemeTransactionId'] = @scheme_transaction_id unless @scheme_transaction_id.nil?
              hash['threeDSecureResults'] = @three_d_secure_results.to_h unless @three_d_secure_results.nil?
              hash['token'] = @token unless @token.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'authorisationCode'
                @authorisation_code = hash['authorisationCode']
              end
              if hash.has_key? 'card'
                raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
                @card = Worldline::Connect::SDK::V1::Domain::CardEssentials.new_from_hash(hash['card'])
              end
              if hash.has_key? 'fraudResults'
                raise TypeError, "value '%s' is not a Hash" % [hash['fraudResults']] unless hash['fraudResults'].is_a? Hash
                @fraud_results = Worldline::Connect::SDK::V1::Domain::CardFraudResults.new_from_hash(hash['fraudResults'])
              end
              if hash.has_key? 'initialSchemeTransactionId'
                @initial_scheme_transaction_id = hash['initialSchemeTransactionId']
              end
              if hash.has_key? 'schemeTransactionId'
                @scheme_transaction_id = hash['schemeTransactionId']
              end
              if hash.has_key? 'threeDSecureResults'
                raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecureResults']] unless hash['threeDSecureResults'].is_a? Hash
                @three_d_secure_results = Worldline::Connect::SDK::V1::Domain::ThreeDSecureResults.new_from_hash(hash['threeDSecureResults'])
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
