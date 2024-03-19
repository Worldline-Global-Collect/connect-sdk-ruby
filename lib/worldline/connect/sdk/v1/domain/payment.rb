#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_order_status'
require 'worldline/connect/sdk/v1/domain/hosted_checkout_specific_output'
require 'worldline/connect/sdk/v1/domain/payment_output'
require 'worldline/connect/sdk/v1/domain/payment_status_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::HostedCheckoutSpecificOutput] hosted_checkout_specific_output
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentOutput] payment_output
          # @attr [String] status
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentStatusOutput] status_output
          class Payment < Worldline::Connect::SDK::V1::Domain::AbstractOrderStatus

            attr_accessor :hosted_checkout_specific_output

            attr_accessor :payment_output

            attr_accessor :status

            attr_accessor :status_output

            # @return (Hash)
            def to_h
              hash = super
              hash['hostedCheckoutSpecificOutput'] = @hosted_checkout_specific_output.to_h unless @hosted_checkout_specific_output.nil?
              hash['paymentOutput'] = @payment_output.to_h unless @payment_output.nil?
              hash['status'] = @status unless @status.nil?
              hash['statusOutput'] = @status_output.to_h unless @status_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'hostedCheckoutSpecificOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['hostedCheckoutSpecificOutput']] unless hash['hostedCheckoutSpecificOutput'].is_a? Hash
                @hosted_checkout_specific_output = Worldline::Connect::SDK::V1::Domain::HostedCheckoutSpecificOutput.new_from_hash(hash['hostedCheckoutSpecificOutput'])
              end
              if hash.has_key? 'paymentOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentOutput']] unless hash['paymentOutput'].is_a? Hash
                @payment_output = Worldline::Connect::SDK::V1::Domain::PaymentOutput.new_from_hash(hash['paymentOutput'])
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
              if hash.has_key? 'statusOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']] unless hash['statusOutput'].is_a? Hash
                @status_output = Worldline::Connect::SDK::V1::Domain::PaymentStatusOutput.new_from_hash(hash['statusOutput'])
              end
            end
          end
        end
      end
    end
  end
end
