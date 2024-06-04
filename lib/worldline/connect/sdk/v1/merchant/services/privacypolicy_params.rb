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
            # Query parameters for {https://apireference.connect.worldline-solutions.com/s2sapi/v1/en_US/ruby/services/privacypolicy.html Get privacy policy}
            #
            # @attr [String] locale
            # @attr [Integer] payment_product_id
            class PrivacypolicyParams < Worldline::Connect::SDK::Communication::ParamRequest

              attr_accessor :locale

              attr_accessor :payment_product_id

              # @return [Array<Worldline::Connect::SDK::Communication::RequestParam>] representing the attributes of this class
              def to_request_parameters
                result = []
                result << RequestParam.new('locale', @locale) unless @locale.nil?
                result << RequestParam.new('paymentProductId', @payment_product_id.to_s) unless @payment_product_id.nil?
                result
              end
            end
          end
        end
      end
    end
  end
end
