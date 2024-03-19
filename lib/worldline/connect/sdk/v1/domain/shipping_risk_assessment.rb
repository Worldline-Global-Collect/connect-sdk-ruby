#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/address_personal'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AddressPersonal] address
          # @attr [String] comments
          # @attr [String] tracking_number
          class ShippingRiskAssessment < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :address

            attr_accessor :comments

            attr_accessor :tracking_number

            # @return (Hash)
            def to_h
              hash = super
              hash['address'] = @address.to_h unless @address.nil?
              hash['comments'] = @comments unless @comments.nil?
              hash['trackingNumber'] = @tracking_number unless @tracking_number.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'address'
                raise TypeError, "value '%s' is not a Hash" % [hash['address']] unless hash['address'].is_a? Hash
                @address = Worldline::Connect::SDK::V1::Domain::AddressPersonal.new_from_hash(hash['address'])
              end
              if hash.has_key? 'comments'
                @comments = hash['comments']
              end
              if hash.has_key? 'trackingNumber'
                @tracking_number = hash['trackingNumber']
              end
            end
          end
        end
      end
    end
  end
end
