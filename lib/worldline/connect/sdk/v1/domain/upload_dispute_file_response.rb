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
          # @attr [String] dispute_id
          # @attr [String] file_id
          class UploadDisputeFileResponse < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :dispute_id

            attr_accessor :file_id

            # @return (Hash)
            def to_h
              hash = super
              hash['disputeId'] = @dispute_id unless @dispute_id.nil?
              hash['fileId'] = @file_id unless @file_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'disputeId'
                @dispute_id = hash['disputeId']
              end
              if hash.has_key? 'fileId'
                @file_id = hash['fileId']
              end
            end
          end
        end
      end
    end
  end
end
