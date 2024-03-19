#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/trustly_bank_account'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::Address] billing_address
          # @attr [Worldline::Connect::SDK::V1::Domain::TrustlyBankAccount] customer_account
          class PaymentProduct806SpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :billing_address

            attr_accessor :customer_account

            # @return (Hash)
            def to_h
              hash = super
              hash['billingAddress'] = @billing_address.to_h unless @billing_address.nil?
              hash['customerAccount'] = @customer_account.to_h unless @customer_account.nil?
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
                @customer_account = Worldline::Connect::SDK::V1::Domain::TrustlyBankAccount.new_from_hash(hash['customerAccount'])
              end
            end
          end
        end
      end
    end
  end
end
