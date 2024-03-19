#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_sepa_direct_debit_payment_method_specific_input'
require 'worldline/connect/sdk/v1/domain/sepa_direct_debit_payment_product771_specific_input'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] date_collect
          # @attr [String] direct_debit_text
          # @attr [true/false] is_recurring
          # @attr [Worldline::Connect::SDK::V1::Domain::SepaDirectDebitPaymentProduct771SpecificInput] payment_product771_specific_input
          # @attr [String] recurring_payment_sequence_indicator
          # @attr [true/false] requires_approval
          # @attr [String] token
          # @attr [true/false] tokenize
          class SepaDirectDebitPaymentMethodSpecificInput < Worldline::Connect::SDK::V1::Domain::AbstractSepaDirectDebitPaymentMethodSpecificInput

            attr_accessor :date_collect

            attr_accessor :direct_debit_text

            attr_accessor :is_recurring

            attr_accessor :payment_product771_specific_input

            attr_accessor :recurring_payment_sequence_indicator

            attr_accessor :requires_approval

            attr_accessor :token

            attr_accessor :tokenize

            # @return (Hash)
            def to_h
              hash = super
              hash['dateCollect'] = @date_collect unless @date_collect.nil?
              hash['directDebitText'] = @direct_debit_text unless @direct_debit_text.nil?
              hash['isRecurring'] = @is_recurring unless @is_recurring.nil?
              hash['paymentProduct771SpecificInput'] = @payment_product771_specific_input.to_h unless @payment_product771_specific_input.nil?
              hash['recurringPaymentSequenceIndicator'] = @recurring_payment_sequence_indicator unless @recurring_payment_sequence_indicator.nil?
              hash['requiresApproval'] = @requires_approval unless @requires_approval.nil?
              hash['token'] = @token unless @token.nil?
              hash['tokenize'] = @tokenize unless @tokenize.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'dateCollect'
                @date_collect = hash['dateCollect']
              end
              if hash.has_key? 'directDebitText'
                @direct_debit_text = hash['directDebitText']
              end
              if hash.has_key? 'isRecurring'
                @is_recurring = hash['isRecurring']
              end
              if hash.has_key? 'paymentProduct771SpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProduct771SpecificInput']] unless hash['paymentProduct771SpecificInput'].is_a? Hash
                @payment_product771_specific_input = Worldline::Connect::SDK::V1::Domain::SepaDirectDebitPaymentProduct771SpecificInput.new_from_hash(hash['paymentProduct771SpecificInput'])
              end
              if hash.has_key? 'recurringPaymentSequenceIndicator'
                @recurring_payment_sequence_indicator = hash['recurringPaymentSequenceIndicator']
              end
              if hash.has_key? 'requiresApproval'
                @requires_approval = hash['requiresApproval']
              end
              if hash.has_key? 'token'
                @token = hash['token']
              end
              if hash.has_key? 'tokenize'
                @tokenize = hash['tokenize']
              end
            end
          end
        end
      end
    end
  end
end
