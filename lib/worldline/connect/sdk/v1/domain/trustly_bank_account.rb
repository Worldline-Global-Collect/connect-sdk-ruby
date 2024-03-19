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
          # @attr [String] account_last_digits
          # @attr [String] bank_name
          # @attr [String] clearinghouse
          # @attr [String] person_identification_number
          class TrustlyBankAccount < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :account_last_digits

            attr_accessor :bank_name

            attr_accessor :clearinghouse

            attr_accessor :person_identification_number

            # @return (Hash)
            def to_h
              hash = super
              hash['accountLastDigits'] = @account_last_digits unless @account_last_digits.nil?
              hash['bankName'] = @bank_name unless @bank_name.nil?
              hash['clearinghouse'] = @clearinghouse unless @clearinghouse.nil?
              hash['personIdentificationNumber'] = @person_identification_number unless @person_identification_number.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'accountLastDigits'
                @account_last_digits = hash['accountLastDigits']
              end
              if hash.has_key? 'bankName'
                @bank_name = hash['bankName']
              end
              if hash.has_key? 'clearinghouse'
                @clearinghouse = hash['clearinghouse']
              end
              if hash.has_key? 'personIdentificationNumber'
                @person_identification_number = hash['personIdentificationNumber']
              end
            end
          end
        end
      end
    end
  end
end
