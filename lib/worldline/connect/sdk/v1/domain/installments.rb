#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_of_money'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money_per_installment
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money_total
          # @attr [String] frequency_of_installments
          # @attr [Integer] installment_plan_code
          # @attr [String] interest_rate
          # @attr [Integer] number_of_installments
          class Installments < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount_of_money_per_installment

            attr_accessor :amount_of_money_total

            attr_accessor :frequency_of_installments

            attr_accessor :installment_plan_code

            attr_accessor :interest_rate

            attr_accessor :number_of_installments

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoneyPerInstallment'] = @amount_of_money_per_installment.to_h unless @amount_of_money_per_installment.nil?
              hash['amountOfMoneyTotal'] = @amount_of_money_total.to_h unless @amount_of_money_total.nil?
              hash['frequencyOfInstallments'] = @frequency_of_installments unless @frequency_of_installments.nil?
              hash['installmentPlanCode'] = @installment_plan_code unless @installment_plan_code.nil?
              hash['interestRate'] = @interest_rate unless @interest_rate.nil?
              hash['numberOfInstallments'] = @number_of_installments unless @number_of_installments.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoneyPerInstallment'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoneyPerInstallment']] unless hash['amountOfMoneyPerInstallment'].is_a? Hash
                @amount_of_money_per_installment = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoneyPerInstallment'])
              end
              if hash.has_key? 'amountOfMoneyTotal'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoneyTotal']] unless hash['amountOfMoneyTotal'].is_a? Hash
                @amount_of_money_total = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoneyTotal'])
              end
              if hash.has_key? 'frequencyOfInstallments'
                @frequency_of_installments = hash['frequencyOfInstallments']
              end
              if hash.has_key? 'installmentPlanCode'
                @installment_plan_code = hash['installmentPlanCode']
              end
              if hash.has_key? 'interestRate'
                @interest_rate = hash['interestRate']
              end
              if hash.has_key? 'numberOfInstallments'
                @number_of_installments = hash['numberOfInstallments']
              end
            end
          end
        end
      end
    end
  end
end
