#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/card_without_cvv'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::CardWithoutCvv] card_without_cvv
          # @attr [String] first_transaction_date
          # @attr [String] provider_reference
          class TokenCardData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :card_without_cvv

            attr_accessor :first_transaction_date

            attr_accessor :provider_reference

            # @return (Hash)
            def to_h
              hash = super
              hash['cardWithoutCvv'] = @card_without_cvv.to_h unless @card_without_cvv.nil?
              hash['firstTransactionDate'] = @first_transaction_date unless @first_transaction_date.nil?
              hash['providerReference'] = @provider_reference unless @provider_reference.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'cardWithoutCvv'
                raise TypeError, "value '%s' is not a Hash" % [hash['cardWithoutCvv']] unless hash['cardWithoutCvv'].is_a? Hash
                @card_without_cvv = Worldline::Connect::SDK::V1::Domain::CardWithoutCvv.new_from_hash(hash['cardWithoutCvv'])
              end
              if hash.has_key? 'firstTransactionDate'
                @first_transaction_date = hash['firstTransactionDate']
              end
              if hash.has_key? 'providerReference'
                @provider_reference = hash['providerReference']
              end
            end
          end
        end
      end
    end
  end
end
