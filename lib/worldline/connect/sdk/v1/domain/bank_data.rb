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
          # @attr [String] new_bank_name
          # @attr [String] reformatted_account_number
          # @attr [String] reformatted_bank_code
          # @attr [String] reformatted_branch_code
          class BankData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :new_bank_name

            attr_accessor :reformatted_account_number

            attr_accessor :reformatted_bank_code

            attr_accessor :reformatted_branch_code

            # @return (Hash)
            def to_h
              hash = super
              hash['newBankName'] = @new_bank_name unless @new_bank_name.nil?
              hash['reformattedAccountNumber'] = @reformatted_account_number unless @reformatted_account_number.nil?
              hash['reformattedBankCode'] = @reformatted_bank_code unless @reformatted_bank_code.nil?
              hash['reformattedBranchCode'] = @reformatted_branch_code unless @reformatted_branch_code.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'newBankName'
                @new_bank_name = hash['newBankName']
              end
              if hash.has_key? 'reformattedAccountNumber'
                @reformatted_account_number = hash['reformattedAccountNumber']
              end
              if hash.has_key? 'reformattedBankCode'
                @reformatted_bank_code = hash['reformattedBankCode']
              end
              if hash.has_key? 'reformattedBranchCode'
                @reformatted_branch_code = hash['reformattedBranchCode']
              end
            end
          end
        end
      end
    end
  end
end
