#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/communication/param_request'
require 'worldline/connect/sdk/communication/request_param'

module Worldline
  module Connect
    module SDK
      module V1
        module Merchant
          module Payments
            # Query parameters for {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/payments/find.html Find payments}
            #
            # @attr [String] hosted_checkout_id
            # @attr [String] merchant_reference
            # @attr [Integer] merchant_order_id
            # @attr [Integer] offset
            # @attr [Integer] limit
            class FindPaymentsParams < Worldline::Connect::SDK::Communication::ParamRequest

              attr_accessor :hosted_checkout_id

              attr_accessor :merchant_reference

              attr_accessor :merchant_order_id

              attr_accessor :offset

              attr_accessor :limit

              # @return [Array<Worldline::Connect::SDK::Communication::RequestParam>] representing the attributes of this class
              def to_request_parameters
                result = []
                result << RequestParam.new('hostedCheckoutId', @hosted_checkout_id) unless @hosted_checkout_id.nil?
                result << RequestParam.new('merchantReference', @merchant_reference) unless @merchant_reference.nil?
                result << RequestParam.new('merchantOrderId', @merchant_order_id.to_s) unless @merchant_order_id.nil?
                result << RequestParam.new('offset', @offset.to_s) unless @offset.nil?
                result << RequestParam.new('limit', @limit.to_s) unless @limit.nil?
                result
              end
            end
          end
        end
      end
    end
  end
end
