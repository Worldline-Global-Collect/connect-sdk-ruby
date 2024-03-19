#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/bank_account_bban'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] bank_city
          # @attr [String] patronymic_name
          # @attr [String] swift_code
          class BankAccountBbanRefund < Worldline::Connect::SDK::V1::Domain::BankAccountBban

            attr_accessor :bank_city

            attr_accessor :patronymic_name

            attr_accessor :swift_code

            # @return (Hash)
            def to_h
              hash = super
              hash['bankCity'] = @bank_city unless @bank_city.nil?
              hash['patronymicName'] = @patronymic_name unless @patronymic_name.nil?
              hash['swiftCode'] = @swift_code unless @swift_code.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'bankCity'
                @bank_city = hash['bankCity']
              end
              if hash.has_key? 'patronymicName'
                @patronymic_name = hash['patronymicName']
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
