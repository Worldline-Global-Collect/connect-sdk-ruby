#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/account_funding_recipient'
require 'worldline/connect/sdk/v1/domain/airline_data'
require 'worldline/connect/sdk/v1/domain/installments'
require 'worldline/connect/sdk/v1/domain/level3_summary_data'
require 'worldline/connect/sdk/v1/domain/loan_recipient'
require 'worldline/connect/sdk/v1/domain/lodging_data'
require 'worldline/connect/sdk/v1/domain/order_type_information'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AccountFundingRecipient] account_funding_recipient
          # @attr [Worldline::Connect::SDK::V1::Domain::AirlineData] airline_data
          # @attr [Worldline::Connect::SDK::V1::Domain::Installments] installments
          # @attr [Worldline::Connect::SDK::V1::Domain::Level3SummaryData] level3_summary_data
          # @attr [Worldline::Connect::SDK::V1::Domain::LoanRecipient] loan_recipient
          # @attr [Worldline::Connect::SDK::V1::Domain::LodgingData] lodging_data
          # @attr [Integer] number_of_installments
          # @attr [String] order_date
          # @attr [Worldline::Connect::SDK::V1::Domain::OrderTypeInformation] type_information
          class AdditionalOrderInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :account_funding_recipient

            attr_accessor :airline_data

            attr_accessor :installments

            #
            # @deprecated Use Order.shoppingCart.amountBreakdown instead
            attr_accessor :level3_summary_data

            #
            # @deprecated No replacement
            attr_accessor :loan_recipient

            attr_accessor :lodging_data

            #
            # @deprecated Use installments.numberOfInstallments instead
            attr_accessor :number_of_installments

            attr_accessor :order_date

            attr_accessor :type_information

            # @return (Hash)
            def to_h
              hash = super
              hash['accountFundingRecipient'] = @account_funding_recipient.to_h unless @account_funding_recipient.nil?
              hash['airlineData'] = @airline_data.to_h unless @airline_data.nil?
              hash['installments'] = @installments.to_h unless @installments.nil?
              hash['level3SummaryData'] = @level3_summary_data.to_h unless @level3_summary_data.nil?
              hash['loanRecipient'] = @loan_recipient.to_h unless @loan_recipient.nil?
              hash['lodgingData'] = @lodging_data.to_h unless @lodging_data.nil?
              hash['numberOfInstallments'] = @number_of_installments unless @number_of_installments.nil?
              hash['orderDate'] = @order_date unless @order_date.nil?
              hash['typeInformation'] = @type_information.to_h unless @type_information.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'accountFundingRecipient'
                raise TypeError, "value '%s' is not a Hash" % [hash['accountFundingRecipient']] unless hash['accountFundingRecipient'].is_a? Hash
                @account_funding_recipient = Worldline::Connect::SDK::V1::Domain::AccountFundingRecipient.new_from_hash(hash['accountFundingRecipient'])
              end
              if hash.has_key? 'airlineData'
                raise TypeError, "value '%s' is not a Hash" % [hash['airlineData']] unless hash['airlineData'].is_a? Hash
                @airline_data = Worldline::Connect::SDK::V1::Domain::AirlineData.new_from_hash(hash['airlineData'])
              end
              if hash.has_key? 'installments'
                raise TypeError, "value '%s' is not a Hash" % [hash['installments']] unless hash['installments'].is_a? Hash
                @installments = Worldline::Connect::SDK::V1::Domain::Installments.new_from_hash(hash['installments'])
              end
              if hash.has_key? 'level3SummaryData'
                raise TypeError, "value '%s' is not a Hash" % [hash['level3SummaryData']] unless hash['level3SummaryData'].is_a? Hash
                @level3_summary_data = Worldline::Connect::SDK::V1::Domain::Level3SummaryData.new_from_hash(hash['level3SummaryData'])
              end
              if hash.has_key? 'loanRecipient'
                raise TypeError, "value '%s' is not a Hash" % [hash['loanRecipient']] unless hash['loanRecipient'].is_a? Hash
                @loan_recipient = Worldline::Connect::SDK::V1::Domain::LoanRecipient.new_from_hash(hash['loanRecipient'])
              end
              if hash.has_key? 'lodgingData'
                raise TypeError, "value '%s' is not a Hash" % [hash['lodgingData']] unless hash['lodgingData'].is_a? Hash
                @lodging_data = Worldline::Connect::SDK::V1::Domain::LodgingData.new_from_hash(hash['lodgingData'])
              end
              if hash.has_key? 'numberOfInstallments'
                @number_of_installments = hash['numberOfInstallments']
              end
              if hash.has_key? 'orderDate'
                @order_date = hash['orderDate']
              end
              if hash.has_key? 'typeInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['typeInformation']] unless hash['typeInformation'].is_a? Hash
                @type_information = Worldline::Connect::SDK::V1::Domain::OrderTypeInformation.new_from_hash(hash['typeInformation'])
              end
            end
          end
        end
      end
    end
  end
end
