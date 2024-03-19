#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/sdk_data_input'
require 'worldline/connect/sdk/v1/domain/three_d_secure_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] authentication_amount
          # @attr [String] authentication_flow
          # @attr [String] challenge_canvas_size
          # @attr [String] challenge_indicator
          # @attr [String] exemption_request
          # @attr [Worldline::Connect::SDK::V1::Domain::ThreeDSecureData] prior_three_d_secure_data
          # @attr [Worldline::Connect::SDK::V1::Domain::SdkDataInput] sdk_data
          # @attr [true/false] skip_authentication
          # @attr [String] transaction_risk_level
          class AbstractThreeDSecure < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :authentication_amount

            attr_accessor :authentication_flow

            attr_accessor :challenge_canvas_size

            attr_accessor :challenge_indicator

            attr_accessor :exemption_request

            attr_accessor :prior_three_d_secure_data

            attr_accessor :sdk_data

            attr_accessor :skip_authentication

            attr_accessor :transaction_risk_level

            # @return (Hash)
            def to_h
              hash = super
              hash['authenticationAmount'] = @authentication_amount.to_h unless @authentication_amount.nil?
              hash['authenticationFlow'] = @authentication_flow unless @authentication_flow.nil?
              hash['challengeCanvasSize'] = @challenge_canvas_size unless @challenge_canvas_size.nil?
              hash['challengeIndicator'] = @challenge_indicator unless @challenge_indicator.nil?
              hash['exemptionRequest'] = @exemption_request unless @exemption_request.nil?
              hash['priorThreeDSecureData'] = @prior_three_d_secure_data.to_h unless @prior_three_d_secure_data.nil?
              hash['sdkData'] = @sdk_data.to_h unless @sdk_data.nil?
              hash['skipAuthentication'] = @skip_authentication unless @skip_authentication.nil?
              hash['transactionRiskLevel'] = @transaction_risk_level unless @transaction_risk_level.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'authenticationAmount'
                raise TypeError, "value '%s' is not a Hash" % [hash['authenticationAmount']] unless hash['authenticationAmount'].is_a? Hash
                @authentication_amount = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['authenticationAmount'])
              end
              if hash.has_key? 'authenticationFlow'
                @authentication_flow = hash['authenticationFlow']
              end
              if hash.has_key? 'challengeCanvasSize'
                @challenge_canvas_size = hash['challengeCanvasSize']
              end
              if hash.has_key? 'challengeIndicator'
                @challenge_indicator = hash['challengeIndicator']
              end
              if hash.has_key? 'exemptionRequest'
                @exemption_request = hash['exemptionRequest']
              end
              if hash.has_key? 'priorThreeDSecureData'
                raise TypeError, "value '%s' is not a Hash" % [hash['priorThreeDSecureData']] unless hash['priorThreeDSecureData'].is_a? Hash
                @prior_three_d_secure_data = Worldline::Connect::SDK::V1::Domain::ThreeDSecureData.new_from_hash(hash['priorThreeDSecureData'])
              end
              if hash.has_key? 'sdkData'
                raise TypeError, "value '%s' is not a Hash" % [hash['sdkData']] unless hash['sdkData'].is_a? Hash
                @sdk_data = Worldline::Connect::SDK::V1::Domain::SdkDataInput.new_from_hash(hash['sdkData'])
              end
              if hash.has_key? 'skipAuthentication'
                @skip_authentication = hash['skipAuthentication']
              end
              if hash.has_key? 'transactionRiskLevel'
                @transaction_risk_level = hash['transactionRiskLevel']
              end
            end
          end
        end
      end
    end
  end
end
