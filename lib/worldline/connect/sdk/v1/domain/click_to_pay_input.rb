#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] checkout_response_signature
          class ClickToPayInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :checkout_response_signature

            # @return (Hash)
            def to_h
              hash = super
              hash['checkoutResponseSignature'] = @checkout_response_signature unless @checkout_response_signature.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'checkoutResponseSignature'
                @checkout_response_signature = hash['checkoutResponseSignature']
              end
            end
          end
        end
      end
    end
  end
end
