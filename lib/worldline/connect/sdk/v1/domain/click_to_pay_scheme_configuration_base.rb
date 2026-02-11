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
          # @attr [String] src_dpa_id
          # @attr [String] src_initiator_id
          class ClickToPaySchemeConfigurationBase < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :src_dpa_id

            attr_accessor :src_initiator_id

            # @return (Hash)
            def to_h
              hash = super
              hash['srcDpaId'] = @src_dpa_id unless @src_dpa_id.nil?
              hash['srcInitiatorId'] = @src_initiator_id unless @src_initiator_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'srcDpaId'
                @src_dpa_id = hash['srcDpaId']
              end
              if hash.has_key? 'srcInitiatorId'
                @src_initiator_id = hash['srcInitiatorId']
              end
            end
          end
        end
      end
    end
  end
end
