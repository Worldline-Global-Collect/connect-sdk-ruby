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
          # @attr [String] interoperability_data
          # @attr [String] interoperability_token
          class AbstractRedirectPaymentProduct838SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :interoperability_data

            attr_accessor :interoperability_token

            # @return (Hash)
            def to_h
              hash = super
              hash['interoperabilityData'] = @interoperability_data unless @interoperability_data.nil?
              hash['interoperabilityToken'] = @interoperability_token unless @interoperability_token.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'interoperabilityData'
                @interoperability_data = hash['interoperabilityData']
              end
              if hash.has_key? 'interoperabilityToken'
                @interoperability_token = hash['interoperabilityToken']
              end
            end
          end
        end
      end
    end
  end
end
