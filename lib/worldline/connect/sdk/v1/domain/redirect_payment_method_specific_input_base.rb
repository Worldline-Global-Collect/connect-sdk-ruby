#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_redirect_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/redirect_payment_product4101_specific_input_base'
require 'worldline/connect/sdk/v1/domain/redirect_payment_product840_specific_input_base'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct4101SpecificInputBase] payment_product4101_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct840SpecificInputBase] payment_product840_specific_input
          class RedirectPaymentMethodSpecificInputBase < Worldline::Connect::SDK::V1::Domain::AbstractRedirectPaymentMethodSpecificInput

            attr_accessor :payment_product4101_specific_input

            attr_accessor :payment_product840_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProduct4101SpecificInput'] = @payment_product4101_specific_input.to_h unless @payment_product4101_specific_input.nil?
              hash['paymentProduct840SpecificInput'] = @payment_product840_specific_input.to_h unless @payment_product840_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProduct4101SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct4101SpecificInput']] unless hash['paymentProduct4101SpecificInput'].is_a? Hash
                @payment_product4101_specific_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct4101SpecificInputBase.new_from_hash(hash['paymentProduct4101SpecificInput'])
              end
              if hash.has_key? 'paymentProduct840SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificInput']] unless hash['paymentProduct840SpecificInput'].is_a? Hash
                @payment_product840_specific_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct840SpecificInputBase.new_from_hash(hash['paymentProduct840SpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
