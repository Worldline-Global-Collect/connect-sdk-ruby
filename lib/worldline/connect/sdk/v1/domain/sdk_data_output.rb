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
          # @attr [String] sdk_transaction_id
          class SdkDataOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :sdk_transaction_id

            # @return (Hash)
            def to_h
              hash = super
              hash['sdkTransactionId'] = @sdk_transaction_id unless @sdk_transaction_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'sdkTransactionId'
                @sdk_transaction_id = hash['sdkTransactionId']
              end
            end
          end
        end
      end
    end
  end
end
