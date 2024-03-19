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
          # @attr [String] card_number
          # @attr [String] cardholder_name
          # @attr [String] expiry_date
          class CardEssentials < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :card_number

            attr_accessor :cardholder_name

            attr_accessor :expiry_date

            # @return (Hash)
            def to_h
              hash = super
              hash['cardNumber'] = @card_number unless @card_number.nil?
              hash['cardholderName'] = @cardholder_name unless @cardholder_name.nil?
              hash['expiryDate'] = @expiry_date unless @expiry_date.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'cardNumber'
                @card_number = hash['cardNumber']
              end
              if hash.has_key? 'cardholderName'
                @cardholder_name = hash['cardholderName']
              end
              if hash.has_key? 'expiryDate'
                @expiry_date = hash['expiryDate']
              end
            end
          end
        end
      end
    end
  end
end
