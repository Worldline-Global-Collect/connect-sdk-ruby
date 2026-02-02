#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/base_billing_details'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] deferred_payment_date
          # @attr [String] free_cancellation_date
          # @attr [String] free_cancellation_date_time_zone
          class DeferredBillingDetails < Worldline::Connect::SDK::V1::Domain::BaseBillingDetails

            attr_accessor :deferred_payment_date

            attr_accessor :free_cancellation_date

            attr_accessor :free_cancellation_date_time_zone

            # @return (Hash)
            def to_h
              hash = super
              hash['deferredPaymentDate'] = @deferred_payment_date unless @deferred_payment_date.nil?
              hash['freeCancellationDate'] = @free_cancellation_date unless @free_cancellation_date.nil?
              hash['freeCancellationDateTimeZone'] = @free_cancellation_date_time_zone unless @free_cancellation_date_time_zone.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'deferredPaymentDate'
                @deferred_payment_date = hash['deferredPaymentDate']
              end
              if hash.has_key? 'freeCancellationDate'
                @free_cancellation_date = hash['freeCancellationDate']
              end
              if hash.has_key? 'freeCancellationDateTimeZone'
                @free_cancellation_date_time_zone = hash['freeCancellationDateTimeZone']
              end
            end
          end
        end
      end
    end
  end
end
