#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/customer_base'
require 'worldline/connect/sdk/v1/domain/personal_information_token'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::Address] billing_address
          # @attr [Worldline::Connect::SDK::V1::Domain::PersonalInformationToken] personal_information
          class CustomerToken < Worldline::Connect::SDK::V1::Domain::CustomerBase

            attr_accessor :billing_address

            attr_accessor :personal_information

            # @return (Hash)
            def to_h
              hash = super
              hash['billingAddress'] = @billing_address.to_h unless @billing_address.nil?
              hash['personalInformation'] = @personal_information.to_h unless @personal_information.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'billingAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']] unless hash['billingAddress'].is_a? Hash
                @billing_address = Worldline::Connect::SDK::V1::Domain::Address.new_from_hash(hash['billingAddress'])
              end
              if hash.has_key? 'personalInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']] unless hash['personalInformation'].is_a? Hash
                @personal_information = Worldline::Connect::SDK::V1::Domain::PersonalInformationToken.new_from_hash(hash['personalInformation'])
              end
            end
          end
        end
      end
    end
  end
end
