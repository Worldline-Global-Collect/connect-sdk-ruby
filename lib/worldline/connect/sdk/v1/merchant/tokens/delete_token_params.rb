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
          module Tokens
            # Query parameters for {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/tokens/delete.html Delete token}
            # @attr [String] mandate_cancel_date
            class DeleteTokenParams < Worldline::Connect::SDK::Communication::ParamRequest

              attr_accessor :mandate_cancel_date

              # @return [Array<Worldline::Connect::SDK::Communication::RequestParam>] representing the attributes of this class
              def to_request_parameters
                result = []
                result << RequestParam.new('mandateCancelDate', @mandate_cancel_date) unless @mandate_cancel_date.nil?
                result
              end
            end
          end
        end
      end
    end
  end
end
