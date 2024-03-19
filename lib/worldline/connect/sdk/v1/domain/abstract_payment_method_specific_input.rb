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
          # @attr [Integer] payment_product_id
          class AbstractPaymentMethodSpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment_product_id

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProductId'
                @payment_product_id = hash['paymentProductId']
              end
            end
          end
        end
      end
    end
  end
end
