#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/bank_account_bban'
require 'worldline/connect/sdk/v1/domain/bank_account_iban'
require 'worldline/connect/sdk/v1/domain/bank_transfer_payout_method_specific_input'
require 'worldline/connect/sdk/v1/domain/card_payout_method_specific_input'
require 'worldline/connect/sdk/v1/domain/payout_customer'
require 'worldline/connect/sdk/v1/domain/payout_details'
require 'worldline/connect/sdk/v1/domain/payout_merchant'
require 'worldline/connect/sdk/v1/domain/payout_references'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money
          # @attr [Worldline::Connect::SDK::V1::Domain::BankAccountBban] bank_account_bban
          # @attr [Worldline::Connect::SDK::V1::Domain::BankAccountIban] bank_account_iban
          # @attr [Worldline::Connect::SDK::V1::Domain::BankTransferPayoutMethodSpecificInput] bank_transfer_payout_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::CardPayoutMethodSpecificInput] card_payout_method_specific_input
          # @attr [Worldline::Connect::SDK::V1::Domain::PayoutCustomer] customer
          # @attr [Worldline::Connect::SDK::V1::Domain::PayoutMerchant] merchant
          # @attr [String] payout_date
          # @attr [Worldline::Connect::SDK::V1::Domain::PayoutDetails] payout_details
          # @attr [String] payout_text
          # @attr [Worldline::Connect::SDK::V1::Domain::PayoutReferences] references
          # @attr [String] swift_code
          class CreatePayoutRequest < Worldline::Connect::SDK::Domain::DataObject

            #
            # @deprecated Moved to PayoutDetails
            attr_accessor :amount_of_money

            #
            # @deprecated Moved to BankTransferPayoutMethodSpecificInput
            attr_accessor :bank_account_bban

            #
            # @deprecated Moved to BankTransferPayoutMethodSpecificInput
            attr_accessor :bank_account_iban

            attr_accessor :bank_transfer_payout_method_specific_input

            attr_accessor :card_payout_method_specific_input

            #
            # @deprecated Moved to PayoutDetails
            attr_accessor :customer

            attr_accessor :merchant

            #
            # @deprecated Moved to BankTransferPayoutMethodSpecificInput
            attr_accessor :payout_date

            attr_accessor :payout_details

            #
            # @deprecated Moved to BankTransferPayoutMethodSpecificInput
            attr_accessor :payout_text

            #
            # @deprecated Moved to PayoutDetails
            attr_accessor :references

            #
            # @deprecated Moved to BankTransferPayoutMethodSpecificInput
            attr_accessor :swift_code

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['bankAccountBban'] = @bank_account_bban.to_h unless @bank_account_bban.nil?
              hash['bankAccountIban'] = @bank_account_iban.to_h unless @bank_account_iban.nil?
              hash['bankTransferPayoutMethodSpecificInput'] = @bank_transfer_payout_method_specific_input.to_h unless @bank_transfer_payout_method_specific_input.nil?
              hash['cardPayoutMethodSpecificInput'] = @card_payout_method_specific_input.to_h unless @card_payout_method_specific_input.nil?
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['merchant'] = @merchant.to_h unless @merchant.nil?
              hash['payoutDate'] = @payout_date unless @payout_date.nil?
              hash['payoutDetails'] = @payout_details.to_h unless @payout_details.nil?
              hash['payoutText'] = @payout_text unless @payout_text.nil?
              hash['references'] = @references.to_h unless @references.nil?
              hash['swiftCode'] = @swift_code unless @swift_code.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'bankAccountBban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountBban']] unless hash['bankAccountBban'].is_a? Hash
                @bank_account_bban = Worldline::Connect::SDK::V1::Domain::BankAccountBban.new_from_hash(hash['bankAccountBban'])
              end
              if hash.has_key? 'bankAccountIban'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankAccountIban']] unless hash['bankAccountIban'].is_a? Hash
                @bank_account_iban = Worldline::Connect::SDK::V1::Domain::BankAccountIban.new_from_hash(hash['bankAccountIban'])
              end
              if hash.has_key? 'bankTransferPayoutMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['bankTransferPayoutMethodSpecificInput']] unless hash['bankTransferPayoutMethodSpecificInput'].is_a? Hash
                @bank_transfer_payout_method_specific_input = Worldline::Connect::SDK::V1::Domain::BankTransferPayoutMethodSpecificInput.new_from_hash(hash['bankTransferPayoutMethodSpecificInput'])
              end
              if hash.has_key? 'cardPayoutMethodSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['cardPayoutMethodSpecificInput']] unless hash['cardPayoutMethodSpecificInput'].is_a? Hash
                @card_payout_method_specific_input = Worldline::Connect::SDK::V1::Domain::CardPayoutMethodSpecificInput.new_from_hash(hash['cardPayoutMethodSpecificInput'])
              end
              if hash.has_key? 'customer'
                raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
                @customer = Worldline::Connect::SDK::V1::Domain::PayoutCustomer.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'merchant'
                raise TypeError, "value '%s' is not a Hash" % [hash['merchant']] unless hash['merchant'].is_a? Hash
                @merchant = Worldline::Connect::SDK::V1::Domain::PayoutMerchant.new_from_hash(hash['merchant'])
              end
              if hash.has_key? 'payoutDate'
                @payout_date = hash['payoutDate']
              end
              if hash.has_key? 'payoutDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['payoutDetails']] unless hash['payoutDetails'].is_a? Hash
                @payout_details = Worldline::Connect::SDK::V1::Domain::PayoutDetails.new_from_hash(hash['payoutDetails'])
              end
              if hash.has_key? 'payoutText'
                @payout_text = hash['payoutText']
              end
              if hash.has_key? 'references'
                raise TypeError, "value '%s' is not a Hash" % [hash['references']] unless hash['references'].is_a? Hash
                @references = Worldline::Connect::SDK::V1::Domain::PayoutReferences.new_from_hash(hash['references'])
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
