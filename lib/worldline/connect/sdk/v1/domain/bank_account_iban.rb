#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/bank_account'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] iban
          class BankAccountIban < Worldline::Connect::SDK::V1::Domain::BankAccount

            attr_accessor :iban

            # @return (Hash)
            def to_h
              hash = super
              hash['iban'] = @iban unless @iban.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'iban'
                @iban = hash['iban']
              end
            end
          end
        end
      end
    end
  end
end
