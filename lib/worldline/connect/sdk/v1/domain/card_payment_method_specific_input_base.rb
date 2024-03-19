#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_card_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/three_d_secure_base'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::ThreeDSecureBase] three_d_secure
          class CardPaymentMethodSpecificInputBase < Worldline::Connect::SDK::V1::Domain::AbstractCardPaymentMethodSpecificInput

            attr_accessor :three_d_secure

            # @return (Hash)
            def to_h
              hash = super
              hash['threeDSecure'] = @three_d_secure.to_h unless @three_d_secure.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'threeDSecure'
                raise TypeError, "value '%s' is not a Hash" % [hash['threeDSecure']] unless hash['threeDSecure'].is_a? Hash
                @three_d_secure = Worldline::Connect::SDK::V1::Domain::ThreeDSecureBase.new_from_hash(hash['threeDSecure'])
              end
            end
          end
        end
      end
    end
  end
end
