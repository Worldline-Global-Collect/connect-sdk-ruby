#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/refund_payment_product840_customer_account'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::RefundPaymentProduct840CustomerAccount] customer_account
          class RefundPaymentProduct840SpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :customer_account

            # @return (Hash)
            def to_h
              hash = super
              hash['customerAccount'] = @customer_account.to_h unless @customer_account.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'customerAccount'
                raise TypeError, "value '%s' is not a Hash" % [hash['customerAccount']] unless hash['customerAccount'].is_a? Hash
                @customer_account = Worldline::Connect::SDK::V1::Domain::RefundPaymentProduct840CustomerAccount.new_from_hash(hash['customerAccount'])
              end
            end
          end
        end
      end
    end
  end
end
