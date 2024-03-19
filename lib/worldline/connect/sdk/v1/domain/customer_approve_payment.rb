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
          # @attr [String] account_type
          class CustomerApprovePayment < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :account_type

            # @return (Hash)
            def to_h
              hash = super
              hash['accountType'] = @account_type unless @account_type.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'accountType'
                @account_type = hash['accountType']
              end
            end
          end
        end
      end
    end
  end
end
