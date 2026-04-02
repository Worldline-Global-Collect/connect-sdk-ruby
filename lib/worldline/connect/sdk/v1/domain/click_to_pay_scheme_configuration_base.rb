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
          # @attr [String] src_initiator_id
          # @attr [String] srci_dpa_id
          class ClickToPaySchemeConfigurationBase < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :src_initiator_id

            attr_accessor :srci_dpa_id

            # @return (Hash)
            def to_h
              hash = super
              hash['srcInitiatorId'] = @src_initiator_id unless @src_initiator_id.nil?
              hash['srciDpaId'] = @srci_dpa_id unless @srci_dpa_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'srcInitiatorId'
                @src_initiator_id = hash['srcInitiatorId']
              end
              if hash.has_key? 'srciDpaId'
                @srci_dpa_id = hash['srciDpaId']
              end
            end
          end
        end
      end
    end
  end
end
