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
          # @attr [String] description
          class BaseBillingDetails < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :description

            # @return (Hash)
            def to_h
              hash = super
              hash['description'] = @description unless @description.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'description'
                @description = hash['description']
              end
            end
          end
        end
      end
    end
  end
end
