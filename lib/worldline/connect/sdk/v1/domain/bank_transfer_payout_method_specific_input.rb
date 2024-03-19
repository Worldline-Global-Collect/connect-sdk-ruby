#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_payout_method_specific_input'
require 'worldline/connect/sdk/v1/domain/bank_account_bban'
require 'worldline/connect/sdk/v1/domain/bank_account_iban'
require 'worldline/connect/sdk/v1/domain/payout_customer'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::BankAccountBban] bank_account_bban
          # @attr [Worldline::Connect::SDK::V1::Domain::BankAccountIban] bank_account_iban
          # @attr [Worldline::Connect::SDK::V1::Domain::PayoutCustomer] customer
          # @attr [String] payout_date
          # @attr [String] payout_text
          # @attr [String] swift_code
          class BankTransferPayoutMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractPayoutMethodSpecificInput

            attr_accessor :bank_account_bban

            attr_accessor :bank_account_iban

            #
            # @deprecated Moved to PayoutDetails
            attr_accessor :customer

            attr_accessor :payout_date

            attr_accessor :payout_text

            attr_accessor :swift_code

            # @return (Hash)
            def to_h
              hash = super
              hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
              hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['payoutDate'] = @payout_date unless @payout_date.nil?
              hash['payoutText'] = @payout_text unless @payout_text.nil?
              hash['swiftCode'] = @swift_code unless @swift_code.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bankAccountBban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']] unless hash['bankAccountBban'].is_a? Hash
                @bank_account_bban = Worldline::Connect::SDK::V1::Domain::BankAccountBban.new_from_hash(hash['bankAccountBban'])
              end
              if hash.has_key? 'bankAccountIban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
                @bank_account_iban = Worldline::Connect::SDK::V1::Domain::BankAccountIban.new_from_hash(hash['bankAccountIban'])
              end
              if hash.has_key? 'customer'
                raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
                @customer = Worldline::Connect::SDK::V1::Domain::PayoutCustomer.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'payoutDate'
                @payout_date = hash['payoutDate']
              end
              if hash.has_key? 'payoutText'
                @payout_text = hash['payoutText']
              end
              if hash.has_key? 'swiftCode'
                @swift_code = hash['swiftCode']
              end
            end
          end
        end
      end
    end
  end
end
