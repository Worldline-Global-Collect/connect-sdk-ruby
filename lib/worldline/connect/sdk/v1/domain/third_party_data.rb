#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payment_product863_third_party_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProduct863ThirdPartyData] payment_product863
          class ThirdPartyData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment_product863

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProduct863'] = @payment_product863.to_h unless @payment_product863.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProduct863'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct863']] unless hash['paymentProduct863'].is_a? Hash
                @payment_product863 = Worldline::Connect::SDK::V1::Domain::PaymentProduct863ThirdPartyData.new_from_hash(hash['paymentProduct863'])
              end
            end
          end
        end
      end
    end
  end
end
