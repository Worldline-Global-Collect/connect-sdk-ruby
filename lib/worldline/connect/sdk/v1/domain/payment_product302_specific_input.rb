#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/automatic_reload_billing_details'
require 'worldline/connect/sdk/v1/domain/deferred_billing_details'
require 'worldline/connect/sdk/v1/domain/recurring_billing_details'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AutomaticReloadBillingDetails] automatic_reload_billing
          # @attr [String] billing_agreement
          # @attr [Worldline::Connect::SDK::V1::Domain::DeferredBillingDetails] deferred_billing
          # @attr [String] management_url
          # @attr [String] payment_description
          # @attr [Worldline::Connect::SDK::V1::Domain::RecurringBillingDetails] regular_billing
          # @attr [String] token_notification_url
          # @attr [Worldline::Connect::SDK::V1::Domain::RecurringBillingDetails] trial_billing
          class PaymentProduct302SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :automatic_reload_billing

            attr_accessor :billing_agreement

            attr_accessor :deferred_billing

            attr_accessor :management_url

            attr_accessor :payment_description

            attr_accessor :regular_billing

            attr_accessor :token_notification_url

            attr_accessor :trial_billing

            # @return (Hash)
            def to_h
              hash = super
              hash['automaticReloadBilling'] = @automatic_reload_billing.to_h unless @automatic_reload_billing.nil?
              hash['billingAgreement'] = @billing_agreement unless @billing_agreement.nil?
              hash['deferredBilling'] = @deferred_billing.to_h unless @deferred_billing.nil?
              hash['managementUrl'] = @management_url unless @management_url.nil?
              hash['paymentDescription'] = @payment_description unless @payment_description.nil?
              hash['regularBilling'] = @regular_billing.to_h unless @regular_billing.nil?
              hash['tokenNotificationUrl'] = @token_notification_url unless @token_notification_url.nil?
              hash['trialBilling'] = @trial_billing.to_h unless @trial_billing.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'automaticReloadBilling'
                raise TypeError, "value '%s' is not a Hash" % [hash['automaticReloadBilling']] unless hash['automaticReloadBilling'].is_a? Hash
                @automatic_reload_billing = Worldline::Connect::SDK::V1::Domain::AutomaticReloadBillingDetails.new_from_hash(hash['automaticReloadBilling'])
              end
              if hash.has_key? 'billingAgreement'
                @billing_agreement = hash['billingAgreement']
              end
              if hash.has_key? 'deferredBilling'
                raise TypeError, "value '%s' is not a Hash" % [hash['deferredBilling']] unless hash['deferredBilling'].is_a? Hash
                @deferred_billing = Worldline::Connect::SDK::V1::Domain::DeferredBillingDetails.new_from_hash(hash['deferredBilling'])
              end
              if hash.has_key? 'managementUrl'
                @management_url = hash['managementUrl']
              end
              if hash.has_key? 'paymentDescription'
                @payment_description = hash['paymentDescription']
              end
              if hash.has_key? 'regularBilling'
                raise TypeError, "value '%s' is not a Hash" % [hash['regularBilling']] unless hash['regularBilling'].is_a? Hash
                @regular_billing = Worldline::Connect::SDK::V1::Domain::RecurringBillingDetails.new_from_hash(hash['regularBilling'])
              end
              if hash.has_key? 'tokenNotificationUrl'
                @token_notification_url = hash['tokenNotificationUrl']
              end
              if hash.has_key? 'trialBilling'
                raise TypeError, "value '%s' is not a Hash" % [hash['trialBilling']] unless hash['trialBilling'].is_a? Hash
                @trial_billing = Worldline::Connect::SDK::V1::Domain::RecurringBillingDetails.new_from_hash(hash['trialBilling'])
              end
            end
          end
        end
      end
    end
  end
end
