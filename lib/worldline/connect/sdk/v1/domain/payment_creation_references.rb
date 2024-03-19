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
          # @attr [String] additional_reference
          # @attr [String] external_reference
          class PaymentCreationReferences < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :additional_reference

            attr_accessor :external_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['additionalReference'] = @additional_reference unless @additional_reference.nil?
              hash['externalReference'] = @external_reference unless @external_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'additionalReference'
                @additional_reference = hash['additionalReference']
              end
              if hash.has_key? 'externalReference'
                @external_reference = hash['externalReference']
              end
            end
          end
        end
      end
    end
  end
end
