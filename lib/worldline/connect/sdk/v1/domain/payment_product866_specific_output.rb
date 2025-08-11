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
          # @attr [String] wallet_used
          class PaymentProduct866SpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :wallet_used

            # @return (Hash)
            def to_h
              hash = super
              hash['walletUsed'] = @wallet_used unless @wallet_used.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'walletUsed'
                @wallet_used = hash['walletUsed']
              end
            end
          end
        end
      end
    end
  end
end
