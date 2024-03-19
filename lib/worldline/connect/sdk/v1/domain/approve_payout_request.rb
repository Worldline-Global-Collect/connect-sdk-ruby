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
          # @attr [String] date_payout
          class ApprovePayoutRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :date_payout

            # @return (Hash)
            def to_h
              hash = super
              hash['datePayout'] = @date_payout unless @date_payout.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'datePayout'
                @date_payout = hash['datePayout']
              end
            end
          end
        end
      end
    end
  end
end
