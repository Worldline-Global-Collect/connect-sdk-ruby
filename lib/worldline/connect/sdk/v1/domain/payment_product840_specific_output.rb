#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/payment_product840_customer_account'
require 'worldline/connect/sdk/v1/domain/protection_eligibility'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::Address] billing_address
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProduct840CustomerAccount] customer_account
          # @attr [Worldline::Connect::SDK::V1::Domain::Address] customer_address
          # @attr [Worldline::Connect::SDK::V1::Domain::ProtectionEligibility] protection_eligibility
          class PaymentProduct840SpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :billing_address

            attr_accessor :customer_account

            attr_accessor :customer_address

            attr_accessor :protection_eligibility

            # @return (Hash)
            def to_h
              hash = super
              hash['billingAddress'] = @billing_address.to_h unless @billing_address.nil?
              hash['customerAccount'] = @customer_account.to_h unless @customer_account.nil?
              hash['customerAddress'] = @customer_address.to_h unless @customer_address.nil?
              hash['protectionEligibility'] = @protection_eligibility.to_h unless @protection_eligibility.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'billingAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']] unless hash['billingAddress'].is_a? Hash
                @billing_address = Worldline::Connect::SDK::V1::Domain::Address.new_from_hash(hash['billingAddress'])
              end
              if hash.has_key? 'customerAccount'
                raise TypeError, "value '%s' is not a Hash" % [hash['customerAccount']] unless hash['customerAccount'].is_a? Hash
                @customer_account = Worldline::Connect::SDK::V1::Domain::PaymentProduct840CustomerAccount.new_from_hash(hash['customerAccount'])
              end
              if hash.has_key? 'customerAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['customerAddress']] unless hash['customerAddress'].is_a? Hash
                @customer_address = Worldline::Connect::SDK::V1::Domain::Address.new_from_hash(hash['customerAddress'])
              end
              if hash.has_key? 'protectionEligibility'
                raise TypeError, "value '%s' is not a Hash" % [hash['protectionEligibility']] unless hash['protectionEligibility'].is_a? Hash
                @protection_eligibility = Worldline::Connect::SDK::V1::Domain::ProtectionEligibility.new_from_hash(hash['protectionEligibility'])
              end
            end
          end
        end
      end
    end
  end
end
