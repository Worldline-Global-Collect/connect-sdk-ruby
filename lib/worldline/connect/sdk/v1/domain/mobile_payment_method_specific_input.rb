#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/decrypted_payment_data'
require 'worldline/connect/sdk/v1/domain/mobile_payment_product320_specific_input'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] authorization_mode
          # @attr [String] customer_reference
          # @attr [Worldline::Connect::SDK::V1::Domain::DecryptedPaymentData] decrypted_payment_data
          # @attr [String] encrypted_payment_data
          # @attr [Worldline::Connect::SDK::V1::Domain::MobilePaymentProduct320SpecificInput] payment_product320_specific_input
          # @attr [true/false] requires_approval
          # @attr [true/false] skip_fraud_service
          class MobilePaymentMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractPaymentMethodSpecificInput

            attr_accessor :authorization_mode

            attr_accessor :customer_reference

            attr_accessor :decrypted_payment_data

            attr_accessor :encrypted_payment_data

            attr_accessor :payment_product320_specific_input

            attr_accessor :requires_approval

            attr_accessor :skip_fraud_service

            # @return (Hash)
            def to_h
              hash = super
              hash['authorizationMode'] = @authorization_mode unless @authorization_mode.nil?
              hash['customerReference'] = @customer_reference unless @customer_reference.nil?
              hash['decryptedPaymentData'] = @decrypted_payment_data.to_h unless @decrypted_payment_data.nil?
              hash['encryptedPaymentData'] = @encrypted_payment_data unless @encrypted_payment_data.nil?
              hash['paymentProduct320SpecificInput'] = @payment_product320_specific_input.to_h unless @payment_product320_specific_input.nil?
              hash['requiresApproval'] = @requires_approval unless @requires_approval.nil?
              hash['skipFraudService'] = @skip_fraud_service unless @skip_fraud_service.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'authorizationMode'
                @authorization_mode = hash['authorizationMode']
              end
              if hash.has_key? 'customerReference'
                @customer_reference = hash['customerReference']
              end
              if hash.has_key? 'decryptedPaymentData'
                raise TypeError, "value '%s' is not a Hash" % [hash['decryptedPaymentData']] unless hash['decryptedPaymentData'].is_a? Hash
                @decrypted_payment_data = Worldline::Connect::SDK::V1::Domain::DecryptedPaymentData.new_from_hash(hash['decryptedPaymentData'])
              end
              if hash.has_key? 'encryptedPaymentData'
                @encrypted_payment_data = hash['encryptedPaymentData']
              end
              if hash.has_key? 'paymentProduct320SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct320SpecificInput']] unless hash['paymentProduct320SpecificInput'].is_a? Hash
                @payment_product320_specific_input = Worldline::Connect::SDK::V1::Domain::MobilePaymentProduct320SpecificInput.new_from_hash(hash['paymentProduct320SpecificInput'])
              end
              if hash.has_key? 'requiresApproval'
                @requires_approval = hash['requiresApproval']
              end
              if hash.has_key? 'skipFraudService'
                @skip_fraud_service = hash['skipFraudService']
              end
            end
          end
        end
      end
    end
  end
end