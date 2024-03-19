#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/merchant_action'
require 'worldline/connect/sdk/v1/domain/payment'
require 'worldline/connect/sdk/v1/domain/payment_creation_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentCreationOutput] creation_output
          # @attr [Worldline::Connect::SDK::V1::Domain::MerchantAction] merchant_action
          # @attr [Worldline::Connect::SDK::V1::Domain::Payment] payment
          class CreatePaymentResult < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :creation_output

            attr_accessor :merchant_action

            attr_accessor :payment

            # @return (Hash)
            def to_h
              hash = super
              hash['creationOutput'] = @creation_output.to_h unless @creation_output.nil?
              hash['merchantAction'] = @merchant_action.to_h unless @merchant_action.nil?
              hash['payment'] = @payment.to_h unless @payment.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'creationOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['creationOutput']] unless hash['creationOutput'].is_a? Hash
                @creation_output = Worldline::Connect::SDK::V1::Domain::PaymentCreationOutput.new_from_hash(hash['creationOutput'])
              end
              if hash.has_key? 'merchantAction'
                raise TypeError, "value '%s' is not a Hash" % [hash['merchantAction']] unless hash['merchantAction'].is_a? Hash
                @merchant_action = Worldline::Connect::SDK::V1::Domain::MerchantAction.new_from_hash(hash['merchantAction'])
              end
              if hash.has_key? 'payment'
                raise TypeError, "value '%s' is not a Hash" % [hash['payment']] unless hash['payment'].is_a? Hash
                @payment = Worldline::Connect::SDK::V1::Domain::Payment.new_from_hash(hash['payment'])
              end
            end
          end
        end
      end
    end
  end
end
