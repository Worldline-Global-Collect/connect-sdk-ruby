#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/key_value_pair'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] must_write_reason
          # @attr [String] status
          class AccountOnFileAttribute < Worldline::Connect::SDK::V1::Domain::KeyValuePair

            attr_accessor :must_write_reason

            attr_accessor :status

            # @return (Hash)
            def to_h
              hash = super
              hash['mustWriteReason'] = @must_write_reason unless @must_write_reason.nil?
              hash['status'] = @status unless @status.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mustWriteReason'
                @must_write_reason = hash['mustWriteReason']
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
            end
          end
        end
      end
    end
  end
end
