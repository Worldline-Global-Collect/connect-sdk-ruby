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
          module Products
            # Query parameters for {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/products/directory.html Get payment product directory}
            # @attr [String] country_code
            # @attr [String] currency_code
            class DirectoryParams < Worldline::Connect::SDK::Communication::ParamRequest

              attr_accessor :country_code

              attr_accessor :currency_code

              # @return [Array<Worldline::Connect::SDK::Communication::RequestParam>] representing the attributes of this class
              def to_request_parameters
                result = []
                result << RequestParam.new('countryCode', @country_code) unless @country_code.nil?
                result << RequestParam.new('currencyCode', @currency_code) unless @currency_code.nil?
                result
              end
            end
          end
        end
      end
    end
  end
end
