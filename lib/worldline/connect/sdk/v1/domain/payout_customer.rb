#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/company_information'
require 'worldline/connect/sdk/v1/domain/contact_details_base'
require 'worldline/connect/sdk/v1/domain/personal_name'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::Address] address
          # @attr [Worldline::Connect::SDK::V1::Domain::CompanyInformation] company_information
          # @attr [Worldline::Connect::SDK::V1::Domain::ContactDetailsBase] contact_details
          # @attr [String] merchant_customer_id
          # @attr [Worldline::Connect::SDK::V1::Domain::PersonalName] name
          class PayoutCustomer < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :address

            attr_accessor :company_information

            attr_accessor :contact_details

            attr_accessor :merchant_customer_id

            attr_accessor :name

            # @return (Hash)
            def to_h
              hash = super
              hash['address'] = @address.to_h unless @address.nil?
              hash['companyInformation'] = @company_information.to_h unless @company_information.nil?
              hash['contactDetails'] = @contact_details.to_h unless @contact_details.nil?
              hash['merchantCustomerId'] = @merchant_customer_id unless @merchant_customer_id.nil?
              hash['name'] = @name.to_h unless @name.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'address'
                raise TypeError, "value '%s' is not a Hash" % [hash['address']] unless hash['address'].is_a? Hash
                @address = Worldline::Connect::SDK::V1::Domain::Address.new_from_hash(hash['address'])
              end
              if hash.has_key? 'companyInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['companyInformation']] unless hash['companyInformation'].is_a? Hash
                @company_information = Worldline::Connect::SDK::V1::Domain::CompanyInformation.new_from_hash(hash['companyInformation'])
              end
              if hash.has_key? 'contactDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']] unless hash['contactDetails'].is_a? Hash
                @contact_details = Worldline::Connect::SDK::V1::Domain::ContactDetailsBase.new_from_hash(hash['contactDetails'])
              end
              if hash.has_key? 'merchantCustomerId'
                @merchant_customer_id = hash['merchantCustomerId']
              end
              if hash.has_key? 'name'
                raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
                @name = Worldline::Connect::SDK::V1::Domain::PersonalName.new_from_hash(hash['name'])
              end
            end
          end
        end
      end
    end
  end
end
