#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/key_value_pair'
require 'worldline/connect/sdk/v1/domain/mobile_three_d_secure_challenge_parameters'
require 'worldline/connect/sdk/v1/domain/payment_product_field'
require 'worldline/connect/sdk/v1/domain/redirect_data'
require 'worldline/connect/sdk/v1/domain/third_party_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] action_type
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::PaymentProductField>] form_fields
          # @attr [Worldline::Connect::SDK::V1::Domain::MobileThreeDSecureChallengeParameters] mobile_three_d_secure_challenge_parameters
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectData] redirect_data
          # @attr [String] rendering_data
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::KeyValuePair>] show_data
          # @attr [Worldline::Connect::SDK::V1::Domain::ThirdPartyData] third_party_data
          class MerchantAction < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :action_type

            attr_accessor :form_fields

            attr_accessor :mobile_three_d_secure_challenge_parameters

            attr_accessor :redirect_data

            attr_accessor :rendering_data

            attr_accessor :show_data

            attr_accessor :third_party_data

            # @return (Hash)
            def to_h
              hash = super
              hash['actionType'] = @action_type unless @action_type.nil?
              hash['formFields'] = @form_fields.collect{|val| val.to_h} unless @form_fields.nil?
              hash['mobileThreeDSecureChallengeParameters'] = @mobile_three_d_secure_challenge_parameters.to_h unless @mobile_three_d_secure_challenge_parameters.nil?
              hash['redirectData'] = @redirect_data.to_h unless @redirect_data.nil?
              hash['renderingData'] = @rendering_data unless @rendering_data.nil?
              hash['showData'] = @show_data.collect{|val| val.to_h} unless @show_data.nil?
              hash['thirdPartyData'] = @third_party_data.to_h unless @third_party_data.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'actionType'
                @action_type = hash['actionType']
              end
              if hash.has_key? 'formFields'
                raise TypeError, "value '%s' is not an Array" % [hash['formFields']] unless hash['formFields'].is_a? Array
                @form_fields = []
                hash['formFields'].each do |e|
                  @form_fields << Worldline::Connect::SDK::V1::Domain::PaymentProductField.new_from_hash(e)
                end
              end
              if hash.has_key? 'mobileThreeDSecureChallengeParameters'
                raise TypeError, "value '%s' is not a Hash" % [hash['mobileThreeDSecureChallengeParameters']] unless hash['mobileThreeDSecureChallengeParameters'].is_a? Hash
                @mobile_three_d_secure_challenge_parameters = Worldline::Connect::SDK::V1::Domain::MobileThreeDSecureChallengeParameters.new_from_hash(hash['mobileThreeDSecureChallengeParameters'])
              end
              if hash.has_key? 'redirectData'
                raise TypeError, "value '%s' is not a Hash" % [hash['redirectData']] unless hash['redirectData'].is_a? Hash
                @redirect_data = Worldline::Connect::SDK::V1::Domain::RedirectData.new_from_hash(hash['redirectData'])
              end
              if hash.has_key? 'renderingData'
                @rendering_data = hash['renderingData']
              end
              if hash.has_key? 'showData'
                raise TypeError, "value '%s' is not an Array" % [hash['showData']] unless hash['showData'].is_a? Array
                @show_data = []
                hash['showData'].each do |e|
                  @show_data << Worldline::Connect::SDK::V1::Domain::KeyValuePair.new_from_hash(e)
                end
              end
              if hash.has_key? 'thirdPartyData'
                raise TypeError, "value '%s' is not a Hash" % [hash['thirdPartyData']] unless hash['thirdPartyData'].is_a? Hash
                @third_party_data = Worldline::Connect::SDK::V1::Domain::ThirdPartyData.new_from_hash(hash['thirdPartyData'])
              end
            end
          end
        end
      end
    end
  end
end
