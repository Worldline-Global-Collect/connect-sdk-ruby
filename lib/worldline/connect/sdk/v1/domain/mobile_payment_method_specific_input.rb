#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_mobile_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/decrypted_payment_data'
require 'worldline/connect/sdk/v1/domain/mobile_payment_product320_specific_input'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::DecryptedPaymentData] decrypted_payment_data
          # @attr [String] encrypted_payment_data
          # @attr [true/false] is_recurring
          # @attr [String] merchant_initiated_reason_indicator
          # @attr [Worldline::Connect::SDK::V1::Domain::MobilePaymentProduct320SpecificInput] payment_product320_specific_input
          class MobilePaymentMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractMobilePaymentMethodSpecificInput

            attr_accessor :decrypted_payment_data

            attr_accessor :encrypted_payment_data

            attr_accessor :is_recurring

            attr_accessor :merchant_initiated_reason_indicator

            attr_accessor :payment_product320_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['decryptedPaymentData'] = @decrypted_payment_data.to_h unless @decrypted_payment_data.nil?
              hash['encryptedPaymentData'] = @encrypted_payment_data unless @encrypted_payment_data.nil?
              hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
              hash['merchantInitiatedReasonIndicator'] = @merchant_initiated_reason_indicator unless @merchant_initiated_reason_indicator.nil?
              hash['paymentProduct320SpecificInput'] = @payment_product320_specific_input.to_h unless @payment_product320_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'decryptedPaymentData'
                raise TypeError, "value '%s' is not a Hash" % [hash['decryptedPaymentData']] unless hash['decryptedPaymentData'].is_a? Hash
                @decrypted_payment_data = Worldline::Connect::SDK::V1::Domain::DecryptedPaymentData.new_from_hash(hash['decryptedPaymentData'])
              end
              if hash.has_key? 'encryptedPaymentData'
                @encrypted_payment_data = hash['encryptedPaymentData']
              end
              if hash.has_key? 'isRecurring'
                @is_recurring = hash['isRecurring']
              end
              if hash.has_key? 'merchantInitiatedReasonIndicator'
                @merchant_initiated_reason_indicator = hash['merchantInitiatedReasonIndicator']
              end
              if hash.has_key? 'paymentProduct320SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct320SpecificInput']] unless hash['paymentProduct320SpecificInput'].is_a? Hash
                @payment_product320_specific_input = Worldline::Connect::SDK::V1::Domain::MobilePaymentProduct320SpecificInput.new_from_hash(hash['paymentProduct320SpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
