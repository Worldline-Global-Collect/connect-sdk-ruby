#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_card_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/card'
require 'worldline/connect/sdk/v1/domain/external_cardholder_authentication_data'
require 'worldline/connect/sdk/v1/domain/scheme_token_data'
require 'worldline/connect/sdk/v1/domain/three_d_secure'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::Card] card
          # @attr [Worldline::Connect::SDK::V1::Domain::ExternalCardholderAuthenticationData] external_cardholder_authentication_data
          # @attr [true/false] is_recurring
          # @attr [String] merchant_initiated_reason_indicator
          # @attr [Worldline::Connect::SDK::V1::Domain::SchemeTokenData] network_token_data
          # @attr [String] return_url
          # @attr [Worldline::Connect::SDK::V1::Domain::ThreeDSecure] three_d_secure
          class CardPaymentMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractCardPaymentMethodSpecificInput

            attr_accessor :card

            # @deprecated Use threeDSecure.externalCardholderAuthenticationData instead
            attr_accessor :external_cardholder_authentication_data

            attr_accessor :is_recurring

            attr_accessor :merchant_initiated_reason_indicator

            attr_accessor :network_token_data

            # @deprecated Use threeDSecure.redirectionData.returnUrl instead
            attr_accessor :return_url

            attr_accessor :three_d_secure

            # @return (Hash)
            def to_h
              hash = super
              hash['card'] = @card.to_h unless @card.nil?
              hash['externalCardholderAuthenticationData'] = @external_cardholder_authentication_data.to_h unless @external_cardholder_authentication_data.nil?
              hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
              hash['merchantInitiatedReasonIndicator'] = @merchant_initiated_reason_indicator unless @merchant_initiated_reason_indicator.nil?
              hash['networkTokenData'] = @network_token_data.to_h unless @network_token_data.nil?
              hash['returnUrl'] = @return_url unless @return_url.nil?
              hash['threeDSecure'] = @three_d_secure.to_h unless @three_d_secure.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'card'
                raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
                @card = Worldline::Connect::SDK::V1::Domain::Card.new_from_hash(hash['card'])
              end
              if hash.has_key? 'externalCardholderAuthenticationData'
                raise TypeError, "value '%s' is not a Hash" % [hash['externalCardholderAuthenticationData']] unless hash['externalCardholderAuthenticationData'].is_a? Hash
                @external_cardholder_authentication_data = Worldline::Connect::SDK::V1::Domain::ExternalCardholderAuthenticationData.new_from_hash(hash['externalCardholderAuthenticationData'])
              end
              if hash.has_key? 'isRecurring'
                @is_recurring = hash['isRecurring']
              end
              if hash.has_key? 'merchantInitiatedReasonIndicator'
                @merchant_initiated_reason_indicator = hash['merchantInitiatedReasonIndicator']
              end
              if hash.has_key? 'networkTokenData'
                raise TypeError, "value '%s' is not a Hash" % [hash['networkTokenData']] unless hash['networkTokenData'].is_a? Hash
                @network_token_data = Worldline::Connect::SDK::V1::Domain::SchemeTokenData.new_from_hash(hash['networkTokenData'])
              end
              if hash.has_key? 'returnUrl'
                @return_url = hash['returnUrl']
              end
              if hash.has_key? 'threeDSecure'
                raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecure']] unless hash['threeDSecure'].is_a? Hash
                @three_d_secure = Worldline::Connect::SDK::V1::Domain::ThreeDSecure.new_from_hash(hash['threeDSecure'])
              end
            end
          end
        end
      end
    end
  end
end
