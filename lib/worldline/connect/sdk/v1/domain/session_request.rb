#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payment_product_filters_client_session'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProductFiltersClientSession] payment_product_filters
          # @attr [Array<String>] tokens
          class SessionRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment_product_filters

            attr_accessor :tokens

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProductFilters'] = @payment_product_filters.to_h unless @payment_product_filters.nil?
              hash['tokens'] = @tokens unless @tokens.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProductFilters'
                raise TypeError, "value '%s' is not a Hash" % [hash['paymentProductFilters']] unless hash['paymentProductFilters'].is_a? Hash
                @payment_product_filters = Worldline::Connect::SDK::V1::Domain::PaymentProductFiltersClientSession.new_from_hash(hash['paymentProductFilters'])
              end
              if hash.has_key? 'tokens'
                raise TypeError, "value '%s' is not an Array" % [hash['tokens']] unless hash['tokens'].is_a? Array
                @tokens = []
                hash['tokens'].each do |e|
                  @tokens << e
                end
              end
            end
          end
        end
      end
    end
  end
end
