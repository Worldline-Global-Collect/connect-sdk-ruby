#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/token_card'
require 'worldline/connect/sdk/v1/domain/token_e_wallet'
require 'worldline/connect/sdk/v1/domain/token_non_sepa_direct_debit'
require 'worldline/connect/sdk/v1/domain/token_sepa_direct_debit_without_creditor'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::TokenCard] card
          # @attr [Worldline::Connect::SDK::V1::Domain::TokenEWallet] e_wallet
          # @attr [Worldline::Connect::SDK::V1::Domain::TokenNonSepaDirectDebit] non_sepa_direct_debit
          # @attr [Integer] payment_product_id
          # @attr [Worldline::Connect::SDK::V1::Domain::TokenSepaDirectDebitWithoutCreditor] sepa_direct_debit
          class UpdateTokenRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :card

            attr_accessor :e_wallet

            attr_accessor :non_sepa_direct_debit

            attr_accessor :payment_product_id

            attr_accessor :sepa_direct_debit

            # @return (Hash)
            def to_h
              hash = super
              hash['card'] = @card.to_h unless @card.nil?
              hash['eWallet'] = @e_wallet.to_h unless @e_wallet.nil?
              hash['nonSepaDirectDebit'] = @non_sepa_direct_debit.to_h unless @non_sepa_direct_debit.nil?
              hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
              hash['sepaDirectDebit'] = @sepa_direct_debit.to_h unless @sepa_direct_debit.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'card'
                raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
                @card = Worldline::Connect::SDK::V1::Domain::TokenCard.new_from_hash(hash['card'])
              end
              if hash.has_key? 'eWallet'
                raise TypeError, "value '%s' is not a Hash" % [hash['eWallet']] unless hash['eWallet'].is_a? Hash
                @e_wallet = Worldline::Connect::SDK::V1::Domain::TokenEWallet.new_from_hash(hash['eWallet'])
              end
              if hash.has_key? 'nonSepaDirectDebit'
                raise TypeError, "value '%s' is not a Hash" % [hash['nonSepaDirectDebit']] unless hash['nonSepaDirectDebit'].is_a? Hash
                @non_sepa_direct_debit = Worldline::Connect::SDK::V1::Domain::TokenNonSepaDirectDebit.new_from_hash(hash['nonSepaDirectDebit'])
              end
              if hash.has_key? 'paymentProductId'
                @payment_product_id = hash['paymentProductId']
              end
              if hash.has_key? 'sepaDirectDebit'
                raise TypeError, "value '%s' is not a Hash" % [hash['sepaDirectDebit']] unless hash['sepaDirectDebit'].is_a? Hash
                @sepa_direct_debit = Worldline::Connect::SDK::V1::Domain::TokenSepaDirectDebitWithoutCreditor.new_from_hash(hash['sepaDirectDebit'])
              end
            end
          end
        end
      end
    end
  end
end
