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
          # @attr [String] cardholder_name
          # @attr [Worldline::Connect::SDK::V1::Domain::GPayThreeDSecure] three_d_secure
          class MobilePaymentProduct320SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :cardholder_name

            attr_accessor :three_d_secure

            # @return (Hash)
            def to_h
              hash = super
              hash['cardholderName'] = @cardholder_name unless @cardholder_name.nil?
              hash['threeDSecure'] = @three_d_secure.to_h unless @three_d_secure.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'cardholderName'
                @cardholder_name = hash['cardholderName']
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
