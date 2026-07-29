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
          # @attr [String] network_data
          # @attr [String] network_session_token
          class AbstractRedirectPaymentProduct838SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :network_data

            attr_accessor :network_session_token

            # @return (Hash)
            def to_h
              hash = super
              hash['networkData'] = @network_data unless @network_data.nil?
              hash['networkSessionToken'] = @network_session_token unless @network_session_token.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'networkData'
                @network_data = hash['networkData']
              end
              if hash.has_key? 'networkSessionToken'
                @network_session_token = hash['networkSessionToken']
              end
            end
          end
        end
      end
    end
  end
end
