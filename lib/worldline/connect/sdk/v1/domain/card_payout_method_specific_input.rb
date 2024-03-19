#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_payout_method_specific_input'
require 'worldline/connect/sdk/v1/domain/card'
require 'worldline/connect/sdk/v1/domain/payout_recipient'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::Card] card
          # @attr [Integer] payment_product_id
          # @attr [Worldline::Connect::SDK::V1::Domain::PayoutRecipient] recipient
          # @attr [String] token
          class CardPayoutMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractPayoutMethodSpecificInput

            attr_accessor :card

            attr_accessor :payment_product_id

            attr_accessor :recipient

            attr_accessor :token

            # @return (Hash)
            def to_h
              hash = super
              hash['card'] = @card.to_h unless @card.nil?
              hash['paymentProductId'] = @payment_product_id unless @payment_product_id.nil?
              hash['recipient'] = @recipient.to_h unless @recipient.nil?
              hash['token'] = @token unless @token.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'card'
                raise TypeError, "value '%s' is not a Hash" % [hash['card']] unless hash['card'].is_a? Hash
                @card = Worldline::Connect::SDK::V1::Domain::Card.new_from_hash(hash['card'])
              end
              if hash.has_key? 'paymentProductId'
                @payment_product_id = hash['paymentProductId']
              end
              if hash.has_key? 'recipient'
                raise TypeError, "value '%s' is not a Hash" % [hash['recipient']] unless hash['recipient'].is_a? Hash
                @recipient = Worldline::Connect::SDK::V1::Domain::PayoutRecipient.new_from_hash(hash['recipient'])
              end
              if hash.has_key? 'token'
                @token = hash['token']
              end
            end
          end
        end
      end
    end
  end
end
