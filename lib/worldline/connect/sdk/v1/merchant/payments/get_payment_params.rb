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
            # Query parameters for {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/payments/get.html Get payment}
            #
            # @attr [true/false] return_operations
            class GetPaymentParams < Worldline::Connect::SDK::Communication::ParamRequest

              attr_accessor :return_operations

              # @return [Array<Worldline::Connect::SDK::Communication::RequestParam>] representing the attributes of this class
              def to_request_parameters
                result = []
                result << RequestParam.new('returnOperations', @return_operations.to_s) unless @return_operations.nil?
                result
              end
            end
          end
        end
      end
    end
  end
end
