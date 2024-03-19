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
          # @attr [String] dispute_creation_date
          # @attr [String] dispute_originator
          # @attr [String] user_name
          class DisputeCreationDetail < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :dispute_creation_date

            attr_accessor :dispute_originator

            attr_accessor :user_name

            # @return (Hash)
            def to_h
              hash = super
              hash['disputeCreationDate'] = @dispute_creation_date unless @dispute_creation_date.nil?
              hash['disputeOriginator'] = @dispute_originator unless @dispute_originator.nil?
              hash['userName'] = @user_name unless @user_name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'disputeCreationDate'
                @dispute_creation_date = hash['disputeCreationDate']
              end
              if hash.has_key? 'disputeOriginator'
                @dispute_originator = hash['disputeOriginator']
              end
              if hash.has_key? 'userName'
                @user_name = hash['userName']
              end
            end
          end
        end
      end
    end
  end
end
