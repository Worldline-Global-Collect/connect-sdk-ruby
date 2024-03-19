#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payment_product_filter'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProductFilter] exclude
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProductFilter] restrict_to
          class PaymentProductFiltersClientSession < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :exclude

            attr_accessor :restrict_to

            # @return (Hash)
            def to_h
              hash = super
              hash['exclude'] = @exclude.to_h unless @exclude.nil?
              hash['restrictTo'] = @restrict_to.to_h unless @restrict_to.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'exclude'
                raise TypeError, "value '%s' is not a Hash" % [hash['exclude']] unless hash['exclude'].is_a? Hash
                @exclude = Worldline::Connect::SDK::V1::Domain::PaymentProductFilter.new_from_hash(hash['exclude'])
              end
              if hash.has_key? 'restrictTo'
                raise TypeError, "value '%s' is not a Hash" % [hash['restrictTo']] unless hash['restrictTo'].is_a? Hash
                @restrict_to = Worldline::Connect::SDK::V1::Domain::PaymentProductFilter.new_from_hash(hash['restrictTo'])
              end
            end
          end
        end
      end
    end
  end
end
