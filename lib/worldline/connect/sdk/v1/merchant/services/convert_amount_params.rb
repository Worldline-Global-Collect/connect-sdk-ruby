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
          module Services
            # Query parameters for {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/services/convertAmount.html Convert amount}
            # @attr [String] source
            # @attr [String] target
            # @attr [Integer] amount
            class ConvertAmountParams < Worldline::Connect::SDK::Communication::ParamRequest

              attr_accessor :source

              attr_accessor :target

              attr_accessor :amount

              # @return [Array<Worldline::Connect::SDK::Communication::RequestParam>] representing the attributes of this class
              def to_request_parameters
                result = []
                result << RequestParam.new('source', @source) unless @source.nil?
                result << RequestParam.new('target', @target) unless @target.nil?
                result << RequestParam.new('amount', @amount.to_s) unless @amount.nil?
                result
              end
            end
          end
        end
      end
    end
  end
end
