#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/bank_account_bban'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::BankAccountBban] bank_account_bban
          class NonSepaDirectDebitPaymentProduct730SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :bank_account_bban

            # @return (Hash)
            def to_h
              hash = super
              hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bankAccountBban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']] unless hash['bankAccountBban'].is_a? Hash
                @bank_account_bban = Worldline::Connect::SDK::V1::Domain::BankAccountBban.new_from_hash(hash['bankAccountBban'])
              end
            end
          end
        end
      end
    end
  end
end
