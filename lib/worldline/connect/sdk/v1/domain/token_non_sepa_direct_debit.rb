#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_token'
require 'worldline/connect/sdk/v1/domain/customer_token'
require 'worldline/connect/sdk/v1/domain/mandate_non_sepa_direct_debit'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::CustomerToken] customer
          # @attr [Worldline::Connect::SDK::V1::Domain::MandateNonSepaDirectDebit] mandate
          class TokenNonSepaDirectDebit < Worldline::Connect::SDK::V1::Domain::AbstractToken

            attr_accessor :customer

            attr_accessor :mandate

            # @return (Hash)
            def to_h
              hash = super
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['mandate'] = @mandate.to_h unless @mandate.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'customer'
                raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
                @customer = Worldline::Connect::SDK::V1::Domain::CustomerToken.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'mandate'
                raise TypeError, "value '%s' is not a Hash" % [hash['mandate']] unless hash['mandate'].is_a? Hash
                @mandate = Worldline::Connect::SDK::V1::Domain::MandateNonSepaDirectDebit.new_from_hash(hash['mandate'])
              end
            end
          end
        end
      end
    end
  end
end
