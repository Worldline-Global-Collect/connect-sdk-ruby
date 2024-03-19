#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payment_product'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::PaymentProduct>] payment_products
          class PaymentProducts < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment_products

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProducts'] = @payment_products.collect{|val| val.to_h} unless @payment_products.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProducts'
                raise TypeError, "value '%s' is not an Array" % [hash['paymentProducts']] unless hash['paymentProducts'].is_a? Array
                @payment_products = []
                hash['paymentProducts'].each do |e|
                  @payment_products << Worldline::Connect::SDK::V1::Domain::PaymentProduct.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
