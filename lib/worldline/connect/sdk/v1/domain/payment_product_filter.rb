#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<String>] groups
          # @attr [Array<Integer>] products
          class PaymentProductFilter < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :groups

            attr_accessor :products

            # @return (Hash)
            def to_h
              hash = super
              hash['groups'] = @groups unless @groups.nil?
              hash['products'] = @products unless @products.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'groups'
                raise TypeError, "value '%s' is not an Array" % [hash['groups']] unless hash['groups'].is_a? Array
                @groups = []
                hash['groups'].each do |e|
                  @groups << e
                end
              end
              if hash.has_key? 'products'
                raise TypeError, "value '%s' is not an Array" % [hash['products']] unless hash['products'].is_a? Array
                @products = []
                hash['products'].each do |e|
                  @products << e
                end
              end
            end
          end
        end
      end
    end
  end
end
