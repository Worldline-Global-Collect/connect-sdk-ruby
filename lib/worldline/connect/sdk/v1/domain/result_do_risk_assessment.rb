#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/retail_decisions_cc_fraud_check_output'
require 'worldline/connect/sdk/v1/domain/validation_bank_account_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] category
          # @attr [String] result
          # @attr [Worldline::Connect::SDK::V1::Domain::RetailDecisionsCCFraudCheckOutput] retaildecisions_cc_fraud_check_output
          # @attr [Worldline::Connect::SDK::V1::Domain::ValidationBankAccountOutput] validation_bank_account_output
          class ResultDoRiskAssessment < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :category

            attr_accessor :result

            attr_accessor :retaildecisions_cc_fraud_check_output

            attr_accessor :validation_bank_account_output

            # @return (Hash)
            def to_h
              hash = super
              hash['category'] = @category unless @category.nil?
              hash['result'] = @result unless @result.nil?
              hash['retaildecisionsCCFraudCheckOutput'] = @retaildecisions_cc_fraud_check_output.to_h unless @retaildecisions_cc_fraud_check_output.nil?
              hash['validationBankAccountOutput'] = @validation_bank_account_output.to_h unless @validation_bank_account_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'category'
                @category = hash['category']
              end
              if hash.has_key? 'result'
                @result = hash['result']
              end
              if hash.has_key? 'retaildecisionsCCFraudCheckOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['retaildecisionsCCFraudCheckOutput']] unless hash['retaildecisionsCCFraudCheckOutput'].is_a? Hash
                @retaildecisions_cc_fraud_check_output = Worldline::Connect::SDK::V1::Domain::RetailDecisionsCCFraudCheckOutput.new_from_hash(hash['retaildecisionsCCFraudCheckOutput'])
              end
              if hash.has_key? 'validationBankAccountOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['validationBankAccountOutput']] unless hash['validationBankAccountOutput'].is_a? Hash
                @validation_bank_account_output = Worldline::Connect::SDK::V1::Domain::ValidationBankAccountOutput.new_from_hash(hash['validationBankAccountOutput'])
              end
            end
          end
        end
      end
    end
  end
end
