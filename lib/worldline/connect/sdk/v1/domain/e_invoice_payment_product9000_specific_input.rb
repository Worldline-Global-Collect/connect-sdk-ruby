#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/bank_account_iban'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::BankAccountIban] bank_account_iban
          # @attr [String] installment_id
          class EInvoicePaymentProduct9000SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :bank_account_iban

            attr_accessor :installment_id

            # @return (Hash)
            def to_h
              hash = super
              hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
              hash['installmentId'] = @installment_id unless @installment_id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bankAccountIban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
                @bank_account_iban = Worldline::Connect::SDK::V1::Domain::BankAccountIban.new_from_hash(hash['bankAccountIban'])
              end
              if hash.has_key? 'installmentId'
                @installment_id = hash['installmentId']
              end
            end
          end
        end
      end
    end
  end
end
