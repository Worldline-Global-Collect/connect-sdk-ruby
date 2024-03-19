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
          # @attr [String] integration_type
          # @attr [String] open_id
          class RedirectPaymentProduct863SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :integration_type

            attr_accessor :open_id

            # @return (Hash)
            def to_h
              hash = super
              hash['integrationType'] = @integration_type unless @integration_type.nil?
              hash['openId'] = @open_id unless @open_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'integrationType'
                @integration_type = hash['integrationType']
              end
              if hash.has_key? 'openId'
                @open_id = hash['openId']
              end
            end
          end
        end
      end
    end
  end
end
