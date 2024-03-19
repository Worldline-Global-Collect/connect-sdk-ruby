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
          # @attr [String] account_holder_name
          class BankAccount < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :account_holder_name

            # @return (Hash)
            def to_h
              hash = super
              hash['accountHolderName'] = @account_holder_name unless @account_holder_name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'accountHolderName'
                @account_holder_name = hash['accountHolderName']
              end
            end
          end
        end
      end
    end
  end
end
