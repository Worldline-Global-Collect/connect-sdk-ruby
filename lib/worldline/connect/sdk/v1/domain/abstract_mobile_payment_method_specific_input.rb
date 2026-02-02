#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/card_recurrence_details'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] authorization_mode
          # @attr [String] customer_reference
          # @attr [String] initial_scheme_transaction_id
          # @attr [Worldline::Connect::SDK::V1::Domain::CardRecurrenceDetails] recurring
          # @attr [true/false] requires_approval
          # @attr [true/false] skip_fraud_service
          # @attr [String] token
          # @attr [true/false] tokenize
          # @attr [String] unscheduled_card_on_file_requestor
          # @attr [String] unscheduled_card_on_file_sequence_indicator
          class AbstractMobilePaymentMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractPaymentMethodSpecificInput

            attr_accessor :authorization_mode

            attr_accessor :customer_reference

            attr_accessor :initial_scheme_transaction_id

            attr_accessor :recurring

            attr_accessor :requires_approval

            attr_accessor :skip_fraud_service

            attr_accessor :token

            attr_accessor :tokenize

            attr_accessor :unscheduled_card_on_file_requestor

            attr_accessor :unscheduled_card_on_file_sequence_indicator

            # @return (Hash)
            def to_h
              hash = super
              hash['authorizationMode'] = @authorization_mode unless @authorization_mode.nil?
              hash['customerReference'] = @customer_reference unless @customer_reference.nil?
              hash['initialSchemeTransactionId'] = @initial_scheme_transaction_id unless @initial_scheme_transaction_id.nil?
              hash['recurring'] = @recurring.to_h unless @recurring.nil?
              hash['requiresApproval'] = @requires_approval unless @requires_approval.nil?
              hash['skipFraudService'] = @skip_fraud_service unless @skip_fraud_service.nil?
              hash['token'] = @token unless @token.nil?
              hash['tokenize'] = @tokenize unless @tokenize.nil?
              hash['unscheduledCardOnFileRequestor'] = @unscheduled_card_on_file_requestor unless @unscheduled_card_on_file_requestor.nil?
              hash['unscheduledCardOnFileSequenceIndicator'] = @unscheduled_card_on_file_sequence_indicator unless @unscheduled_card_on_file_sequence_indicator.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'authorizationMode'
                @authorization_mode = hash['authorizationMode']
              end
              if hash.has_key? 'customerReference'
                @customer_reference = hash['customerReference']
              end
              if hash.has_key? 'initialSchemeTransactionId'
                @initial_scheme_transaction_id = hash['initialSchemeTransactionId']
              end
              if hash.has_key? 'recurring'
                raise TypeError, "value '%s' is not a Hash" % [hash['recurring']] unless hash['recurring'].is_a? Hash
                @recurring = Worldline::Connect::SDK::V1::Domain::CardRecurrenceDetails.new_from_hash(hash['recurring'])
              end
              if hash.has_key? 'requiresApproval'
                @requires_approval = hash['requiresApproval']
              end
              if hash.has_key? 'skipFraudService'
                @skip_fraud_service = hash['skipFraudService']
              end
              if hash.has_key? 'token'
                @token = hash['token']
              end
              if hash.has_key? 'tokenize'
                @tokenize = hash['tokenize']
              end
              if hash.has_key? 'unscheduledCardOnFileRequestor'
                @unscheduled_card_on_file_requestor = hash['unscheduledCardOnFileRequestor']
              end
              if hash.has_key? 'unscheduledCardOnFileSequenceIndicator'
                @unscheduled_card_on_file_sequence_indicator = hash['unscheduledCardOnFileSequenceIndicator']
              end
            end
          end
        end
      end
    end
  end
end
