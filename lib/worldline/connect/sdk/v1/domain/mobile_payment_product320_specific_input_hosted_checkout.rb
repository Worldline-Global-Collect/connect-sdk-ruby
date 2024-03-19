#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/g_pay_three_d_secure'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] merchant_name
          # @attr [String] merchant_origin
          # @attr [Worldline::Connect::SDK::V1::Domain::GPayThreeDSecure] three_d_secure
          class MobilePaymentProduct320SpecificInputHostedCheckout < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :merchant_name

            attr_accessor :merchant_origin

            attr_accessor :three_d_secure

            # @return (Hash)
            def to_h
              hash = super
              hash['merchantName'] = @merchant_name unless @merchant_name.nil?
              hash['merchantOrigin'] = @merchant_origin unless @merchant_origin.nil?
              hash['threeDSecure'] = @three_d_secure.to_h unless @three_d_secure.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'merchantName'
                @merchant_name = hash['merchantName']
              end
              if hash.has_key? 'merchantOrigin'
                @merchant_origin = hash['merchantOrigin']
              end
              if hash.has_key? 'threeDSecure'
                raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecure']] unless hash['threeDSecure'].is_a? Hash
                @three_d_secure = Worldline::Connect::SDK::V1::Domain::GPayThreeDSecure.new_from_hash(hash['threeDSecure'])
              end
            end
          end
        end
      end
    end
  end
end
