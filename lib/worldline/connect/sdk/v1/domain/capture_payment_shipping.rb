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
          # @attr [String] email_address
          # @attr [String] shipped_from_zip
          # @attr [String] tracking_number
          class CapturePaymentShipping < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :address

            attr_accessor :email_address

            attr_accessor :shipped_from_zip

            attr_accessor :tracking_number

            # @return (Hash)
            def to_h
              hash = super
              hash['address'] = @address.to_h unless @address.nil?
              hash['emailAddress'] = @email_address unless @email_address.nil?
              hash['shippedFromZip'] = @shipped_from_zip unless @shipped_from_zip.nil?
              hash['trackingNumber'] = @tracking_number unless @tracking_number.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'address'
                raise TypeError, "value '%s' is not a Hash" % [hash['address']] unless hash['address'].is_a? Hash
                @address = Worldline::Connect::SDK::V1::Domain::AddressPersonal.new_from_hash(hash['address'])
              end
              if hash.has_key? 'emailAddress'
                @email_address = hash['emailAddress']
              end
              if hash.has_key? 'shippedFromZip'
                @shipped_from_zip = hash['shippedFromZip']
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
