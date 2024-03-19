#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_token'
require 'worldline/connect/sdk/v1/domain/customer_token'
require 'worldline/connect/sdk/v1/domain/token_e_wallet_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::CustomerToken] customer
          # @attr [Worldline::Connect::SDK::V1::Domain::TokenEWalletData] data
          class TokenEWallet < Worldline::Connect::SDK::V1::Domain::AbstractToken

            attr_accessor :customer

            attr_accessor :data

            # @return (Hash)
            def to_h
              hash = super
              hash['customer'] = @customer.to_h unless @customer.nil?
              hash['data'] = @data.to_h unless @data.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'customer'
                raise TypeError, "value '%s' is not a Hash" % [hash['customer']] unless hash['customer'].is_a? Hash
                @customer = Worldline::Connect::SDK::V1::Domain::CustomerToken.new_from_hash(hash['customer'])
              end
              if hash.has_key? 'data'
                raise TypeError, "value '%s' is not a Hash" % [hash['data']] unless hash['data'].is_a? Hash
                @data = Worldline::Connect::SDK::V1::Domain::TokenEWalletData.new_from_hash(hash['data'])
              end
            end
          end
        end
      end
    end
  end
end
