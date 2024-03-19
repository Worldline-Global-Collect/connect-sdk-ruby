#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/frequency'
require 'worldline/connect/sdk/v1/domain/trial_information'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::Frequency] recurring_interval
          # @attr [Worldline::Connect::SDK::V1::Domain::TrialInformation] trial_information
          class RecurringPaymentsData < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :recurring_interval

            attr_accessor :trial_information

            # @return (Hash)
            def to_h
              hash = super
              hash['recurringInterval'] = @recurring_interval.to_h unless @recurring_interval.nil?
              hash['trialInformation'] = @trial_information.to_h unless @trial_information.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'recurringInterval'
                raise TypeError, "value '%s' is not a Hash" % [hash['recurringInterval']] unless hash['recurringInterval'].is_a? Hash
                @recurring_interval = Worldline::Connect::SDK::V1::Domain::Frequency.new_from_hash(hash['recurringInterval'])
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
