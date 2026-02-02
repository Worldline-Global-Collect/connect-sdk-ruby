#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/base_billing_details'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Integer] automatic_reload_payment_threshold_amount
          class AutomaticReloadBillingDetails < Worldline::Connect::SDK::V1::Domain::BaseBillingDetails

            attr_accessor :automatic_reload_payment_threshold_amount

            # @return (Hash)
            def to_h
              hash = super
              hash['automaticReloadPaymentThresholdAmount'] = @automatic_reload_payment_threshold_amount unless @automatic_reload_payment_threshold_amount.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'automaticReloadPaymentThresholdAmount'
                @automatic_reload_payment_threshold_amount = hash['automaticReloadPaymentThresholdAmount']
              end
            end
          end
        end
      end
    end
  end
end
