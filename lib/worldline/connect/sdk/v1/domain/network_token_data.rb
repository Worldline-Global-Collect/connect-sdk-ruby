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
          # @attr [String] network_token
          # @attr [String] token_expiry_date
          # @attr [String] token_reference_id
          class NetworkTokenData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :network_token

            attr_accessor :token_expiry_date

            attr_accessor :token_reference_id

            # @return (Hash)
            def to_h
              hash = super
              hash['networkToken'] = @network_token unless @network_token.nil?
              hash['tokenExpiryDate'] = @token_expiry_date unless @token_expiry_date.nil?
              hash['tokenReferenceId'] = @token_reference_id unless @token_reference_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'networkToken'
                @network_token = hash['networkToken']
              end
              if hash.has_key? 'tokenExpiryDate'
                @token_expiry_date = hash['tokenExpiryDate']
              end
              if hash.has_key? 'tokenReferenceId'
                @token_reference_id = hash['tokenReferenceId']
              end
            end
          end
        end
      end
    end
  end
end
