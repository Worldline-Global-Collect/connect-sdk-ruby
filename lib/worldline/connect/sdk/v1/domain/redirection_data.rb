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
          # @attr [String] return_url
          # @attr [String] variant
          class RedirectionData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :return_url

            attr_accessor :variant

            # @return (Hash)
            def to_h
              hash = super
              hash['returnUrl'] = @return_url unless @return_url.nil?
              hash['variant'] = @variant unless @variant.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'returnUrl'
                @return_url = hash['returnUrl']
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
