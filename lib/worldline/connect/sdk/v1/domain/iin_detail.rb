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
          # @attr [true/false] is_allowed_in_context
          # @attr [Integer] payment_product_id
          class IINDetail < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :is_allowed_in_context

            attr_accessor :payment_product_id

            # @return (Hash)
            def to_h
              hash = super
              hash['isAllowedInContext'] = @is_allowed_in_context unless @is_allowed_in_context.nil?
              hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'isAllowedInContext'
                @is_allowed_in_context = hash['isAllowedInContext']
              end
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
