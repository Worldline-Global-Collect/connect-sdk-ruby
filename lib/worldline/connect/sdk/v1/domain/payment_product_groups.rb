#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payment_product_group'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::PaymentProductGroup>] payment_product_groups
          class PaymentProductGroups < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :payment_product_groups

            # @return (Hash)
            def to_h
              hash = super
              hash['paymentProductGroups'] = @payment_product_groups.collect{|val| val.to_h} unless @payment_product_groups.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'paymentProductGroups'
                raise TypeError, "value '%s' is not an Array" % [hash['paymentProductGroups']] unless hash['paymentProductGroups'].is_a? Array
                @payment_product_groups = []
                hash['paymentProductGroups'].each do |e|
                  @payment_product_groups << Worldline::Connect::SDK::V1::Domain::PaymentProductGroup.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
