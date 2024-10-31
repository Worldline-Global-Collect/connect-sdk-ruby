#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_redirect_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/redirect_payment_product4101_specific_input'
require 'worldline/connect/sdk/v1/domain/redirect_payment_product809_specific_input'
require 'worldline/connect/sdk/v1/domain/redirect_payment_product840_specific_input'
require 'worldline/connect/sdk/v1/domain/redirect_payment_product861_specific_input'
require 'worldline/connect/sdk/v1/domain/redirect_payment_product863_specific_input'
require 'worldline/connect/sdk/v1/domain/redirect_payment_product869_specific_input'
require 'worldline/connect/sdk/v1/domain/redirect_payment_product882_specific_input'
require 'worldline/connect/sdk/v1/domain/redirection_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [true/false] is_recurring
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct4101SpecificInput] payment_product4101_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct809SpecificInput] payment_product809_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct840SpecificInput] payment_product840_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct861SpecificInput] payment_product861_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct863SpecificInput] payment_product863_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct869SpecificInput] payment_product869_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct882SpecificInput] payment_product882_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectionData] redirection_data
          # @attr [String] return_url
          class RedirectPaymentMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractRedirectPaymentMethodSpecificInput

            attr_accessor :is_recurring

            attr_accessor :payment_product4101_specific_input

            attr_accessor :payment_product809_specific_input

            attr_accessor :payment_product840_specific_input

            attr_accessor :payment_product861_specific_input

            attr_accessor :payment_product863_specific_input

            attr_accessor :payment_product869_specific_input

            attr_accessor :payment_product882_specific_input

            attr_accessor :redirection_data

            # @deprecated Use redirectionData.returnUrl instead
            attr_accessor :return_url

            # @return (Hash)
            def to_h
              hash = super
              hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
              hash['paymentProduct4101SpecificInput'] = @payment_product4101_specific_input.to_h unless @payment_product4101_specific_input.nil?
              hash['paymentProduct809SpecificInput'] = @payment_product809_specific_input.to_h unless @payment_product809_specific_input.nil?
              hash['paymentProduct840SpecificInput'] = @payment_product840_specific_input.to_h unless @payment_product840_specific_input.nil?
              hash['paymentProduct861SpecificInput'] = @payment_product861_specific_input.to_h unless @payment_product861_specific_input.nil?
              hash['paymentProduct863SpecificInput'] = @payment_product863_specific_input.to_h unless @payment_product863_specific_input.nil?
              hash['paymentProduct869SpecificInput'] = @payment_product869_specific_input.to_h unless @payment_product869_specific_input.nil?
              hash['paymentProduct882SpecificInput'] = @payment_product882_specific_input.to_h unless @payment_product882_specific_input.nil?
              hash['redirectionData'] = @redirection_data.to_h unless @redirection_data.nil?
              hash['returnUrl'] = @return_url unless @return_url.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'isRecurring'
                @is_recurring = hash['isRecurring']
              end
              if hash.has_key? 'paymentProduct4101SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct4101SpecificInput']] unless hash['paymentProduct4101SpecificInput'].is_a? Hash
                @payment_product4101_specific_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct4101SpecificInput.new_from_hash(hash['paymentProduct4101SpecificInput'])
              end
              if hash.has_key? 'paymentProduct809SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct809SpecificInput']] unless hash['paymentProduct809SpecificInput'].is_a? Hash
                @payment_product809_specific_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct809SpecificInput.new_from_hash(hash['paymentProduct809SpecificInput'])
              end
              if hash.has_key? 'paymentProduct840SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct840SpecificInput']] unless hash['paymentProduct840SpecificInput'].is_a? Hash
                @payment_product840_specific_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct840SpecificInput.new_from_hash(hash['paymentProduct840SpecificInput'])
              end
              if hash.has_key? 'paymentProduct861SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct861SpecificInput']] unless hash['paymentProduct861SpecificInput'].is_a? Hash
                @payment_product861_specific_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct861SpecificInput.new_from_hash(hash['paymentProduct861SpecificInput'])
              end
              if hash.has_key? 'paymentProduct863SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct863SpecificInput']] unless hash['paymentProduct863SpecificInput'].is_a? Hash
                @payment_product863_specific_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct863SpecificInput.new_from_hash(hash['paymentProduct863SpecificInput'])
              end
              if hash.has_key? 'paymentProduct869SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct869SpecificInput']] unless hash['paymentProduct869SpecificInput'].is_a? Hash
                @payment_product869_specific_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct869SpecificInput.new_from_hash(hash['paymentProduct869SpecificInput'])
              end
              if hash.has_key? 'paymentProduct882SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct882SpecificInput']] unless hash['paymentProduct882SpecificInput'].is_a? Hash
                @payment_product882_specific_input = Worldline::Connect::SDK::V1::Domain::RedirectPaymentProduct882SpecificInput.new_from_hash(hash['paymentProduct882SpecificInput'])
              end
              if hash.has_key? 'redirectionData'
                raise TypeError, "value '%s' is not a Hash" % [hash['redirectionData']] unless hash['redirectionData'].is_a? Hash
                @redirection_data = Worldline::Connect::SDK::V1::Domain::RedirectionData.new_from_hash(hash['redirectionData'])
              end
              if hash.has_key? 'returnUrl'
                @return_url = hash['returnUrl']
              end
            end
          end
        end
      end
    end
  end
end
