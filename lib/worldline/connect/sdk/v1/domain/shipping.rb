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
          # @attr [String] address_indicator
          # @attr [String] carrier
          # @attr [String] comments
          # @attr [String] email_address
          # @attr [String] first_usage_date
          # @attr [String] instructions
          # @attr [true/false] is_first_usage
          # @attr [String] shipped_from_zip
          # @attr [String] tracking_number
          # @attr [String] type
          class Shipping < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :address

            attr_accessor :address_indicator

            attr_accessor :carrier

            attr_accessor :comments

            attr_accessor :email_address

            attr_accessor :first_usage_date

            attr_accessor :instructions

            attr_accessor :is_first_usage

            attr_accessor :shipped_from_zip

            attr_accessor :tracking_number

            attr_accessor :type

            # @return (Hash)
            def to_h
              hash = super
              hash['address'] = @address.to_h unless @address.nil?
              hash['addressIndicator'] = @address_indicator unless @address_indicator.nil?
              hash['carrier'] = @carrier unless @carrier.nil?
              hash['comments'] = @comments unless @comments.nil?
              hash['emailAddress'] = @email_address unless @email_address.nil?
              hash['firstUsageDate'] = @first_usage_date unless @first_usage_date.nil?
              hash['instructions'] = @instructions unless @instructions.nil?
              hash['isFirstUsage'] = @is_first_usage unless @is_first_usage.nil?
              hash['shippedFromZip'] = @shipped_from_zip unless @shipped_from_zip.nil?
              hash['trackingNumber'] = @tracking_number unless @tracking_number.nil?
              hash['type'] = @type unless @type.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'address'
                raise TypeError, "value '%s' is not a Hash" % [hash['address']] unless hash['address'].is_a? Hash
                @address = Worldline::Connect::SDK::V1::Domain::AddressPersonal.new_from_hash(hash['address'])
              end
              if hash.has_key? 'addressIndicator'
                @address_indicator = hash['addressIndicator']
              end
              if hash.has_key? 'carrier'
                @carrier = hash['carrier']
              end
              if hash.has_key? 'comments'
                @comments = hash['comments']
              end
              if hash.has_key? 'emailAddress'
                @email_address = hash['emailAddress']
              end
              if hash.has_key? 'firstUsageDate'
                @first_usage_date = hash['firstUsageDate']
              end
              if hash.has_key? 'instructions'
                @instructions = hash['instructions']
              end
              if hash.has_key? 'isFirstUsage'
                @is_first_usage = hash['isFirstUsage']
              end
              if hash.has_key? 'shippedFromZip'
                @shipped_from_zip = hash['shippedFromZip']
              end
              if hash.has_key? 'trackingNumber'
                @tracking_number = hash['trackingNumber']
              end
              if hash.has_key? 'type'
                @type = hash['type']
              end
            end
          end
        end
      end
    end
  end
end
