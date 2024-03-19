#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/order_status_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [true/false] is_authorized
          # @attr [true/false] is_refundable
          # @attr [String] three_d_secure_status
          class PaymentStatusOutput < Worldline::Connect::SDK::V1::Domain::OrderStatusOutput

            attr_accessor :is_authorized

            attr_accessor :is_refundable

            attr_accessor :three_d_secure_status

            # @return (Hash)
            def to_h
              hash = super
              hash['isAuthorized'] = @is_authorized unless @is_authorized.nil?
              hash['isRefundable'] = @is_refundable unless @is_refundable.nil?
              hash['threeDSecureStatus'] = @three_d_secure_status unless @three_d_secure_status.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'isAuthorized'
                @is_authorized = hash['isAuthorized']
              end
              if hash.has_key? 'isRefundable'
                @is_refundable = hash['isRefundable']
              end
              if hash.has_key? 'threeDSecureStatus'
                @three_d_secure_status = hash['threeDSecureStatus']
              end
            end
          end
        end
      end
    end
  end
end
