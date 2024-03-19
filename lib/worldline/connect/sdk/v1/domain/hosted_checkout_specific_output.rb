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
          # @attr [String] hosted_checkout_id
          # @attr [String] variant
          class HostedCheckoutSpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :hosted_checkout_id

            attr_accessor :variant

            # @return (Hash)
            def to_h
              hash = super
              hash['hostedCheckoutId'] = @hosted_checkout_id unless @hosted_checkout_id.nil?
              hash['variant'] = @variant unless @variant.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'hostedCheckoutId'
                @hosted_checkout_id = hash['hostedCheckoutId']
              end
              if hash.has_key? 'variant'
                @variant = hash['variant']
              end
            end
          end
        end
      end
    end
  end
end
