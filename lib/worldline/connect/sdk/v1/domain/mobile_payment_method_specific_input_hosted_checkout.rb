#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_mobile_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/mobile_payment_product302_specific_input_hosted_checkout'
require 'worldline/connect/sdk/v1/domain/mobile_payment_product320_specific_input_hosted_checkout'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::MobilePaymentProduct302SpecificInputHostedCheckout] payment_product302_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::MobilePaymentProduct320SpecificInputHostedCheckout] payment_product320_specific_input
          class MobilePaymentMethodSpecificInputHostedCheckout < Worldline::Connect::SDK::V1::Domain::AbstractMobilePaymentMethodSpecificInput

            attr_accessor :payment_product302_specific_input

            attr_accessor :payment_product320_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProduct302SpecificInput'] = @payment_product302_specific_input.to_h unless @payment_product302_specific_input.nil?
              hash['paymentProduct320SpecificInput'] = @payment_product320_specific_input.to_h unless @payment_product320_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProduct302SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct302SpecificInput']] unless hash['paymentProduct302SpecificInput'].is_a? Hash
                @payment_product302_specific_input = Worldline::Connect::SDK::V1::Domain::MobilePaymentProduct302SpecificInputHostedCheckout.new_from_hash(hash['paymentProduct302SpecificInput'])
              end
              if hash.has_key? 'paymentProduct320SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct320SpecificInput']] unless hash['paymentProduct320SpecificInput'].is_a? Hash
                @payment_product320_specific_input = Worldline::Connect::SDK::V1::Domain::MobilePaymentProduct320SpecificInputHostedCheckout.new_from_hash(hash['paymentProduct320SpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
