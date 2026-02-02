#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/frequency'
require 'worldline/connect/sdk/v1/domain/payment_product302_specific_input'
require 'worldline/connect/sdk/v1/domain/trial_information'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProduct302SpecificInput] payment_product302_specific_input
          # @attr [String] recurring_end_date
          # @attr [Worldline::Connect::SDK::V1::Domain::Frequency] recurring_interval
          # @attr [String] recurring_start_date
          # @attr [Worldline::Connect::SDK::V1::Domain::TrialInformation] trial_information
          class RecurringPaymentsData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment_product302_specific_input

            attr_accessor :recurring_end_date

            attr_accessor :recurring_interval

            attr_accessor :recurring_start_date

            attr_accessor :trial_information

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProduct302SpecificInput'] = @payment_product302_specific_input.to_h unless @payment_product302_specific_input.nil?
              hash['recurringEndDate'] = @recurring_end_date unless @recurring_end_date.nil?
              hash['recurringInterval'] = @recurring_interval.to_h unless @recurring_interval.nil?
              hash['recurringStartDate'] = @recurring_start_date unless @recurring_start_date.nil?
              hash['trialInformation'] = @trial_information.to_h unless @trial_information.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProduct302SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct302SpecificInput']] unless hash['paymentProduct302SpecificInput'].is_a? Hash
                @payment_product302_specific_input = Worldline::Connect::SDK::V1::Domain::PaymentProduct302SpecificInput.new_from_hash(hash['paymentProduct302SpecificInput'])
              end
              if hash.has_key? 'recurringEndDate'
                @recurring_end_date = hash['recurringEndDate']
              end
              if hash.has_key? 'recurringInterval'
                raise TypeError, "value '%s' is not a Hash" % [hash['recurringInterval']] unless hash['recurringInterval'].is_a? Hash
                @recurring_interval = Worldline::Connect::SDK::V1::Domain::Frequency.new_from_hash(hash['recurringInterval'])
              end
              if hash.has_key? 'recurringStartDate'
                @recurring_start_date = hash['recurringStartDate']
              end
              if hash.has_key? 'trialInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['trialInformation']] unless hash['trialInformation'].is_a? Hash
                @trial_information = Worldline::Connect::SDK::V1::Domain::TrialInformation.new_from_hash(hash['trialInformation'])
              end
            end
          end
        end
      end
    end
  end
end
