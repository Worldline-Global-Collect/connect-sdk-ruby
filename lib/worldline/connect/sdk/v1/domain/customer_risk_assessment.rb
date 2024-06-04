#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/address'
require 'worldline/connect/sdk/v1/domain/address_personal'
require 'worldline/connect/sdk/v1/domain/contact_details_risk_assessment'
require 'worldline/connect/sdk/v1/domain/customer_account_risk_assessment'
require 'worldline/connect/sdk/v1/domain/customer_device_risk_assessment'
require 'worldline/connect/sdk/v1/domain/personal_information_risk_assessment'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::CustomerAccountRiskAssessment] account
          # @attr [String] account_type
          # @attr [Worldline::Connect::SDK::V1::Domain::Address] billing_address
          # @attr [Worldline::Connect::SDK::V1::Domain::ContactDetailsRiskAssessment] contact_details
          # @attr [Worldline::Connect::SDK::V1::Domain::CustomerDeviceRiskAssessment] device
          # @attr [true/false] is_previous_customer
          # @attr [String] locale
          # @attr [Worldline::Connect::SDK::V1::Domain::PersonalInformationRiskAssessment] personal_information
          # @attr [Worldline::Connect::SDK::V1::Domain::AddressPersonal] shipping_address
          class CustomerRiskAssessment < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :account

            attr_accessor :account_type

            attr_accessor :billing_address

            attr_accessor :contact_details

            attr_accessor :device

            attr_accessor :is_previous_customer

            attr_accessor :locale

            attr_accessor :personal_information

            # @deprecated Use Order.shipping.address instead
            attr_accessor :shipping_address

            # @return (Hash)
            def to_h
              hash = super
              hash['account'] = @account.to_h unless @account.nil?
              hash['accountType'] = @account_type unless @account_type.nil?
              hash['billingAddress'] = @billing_address.to_h unless @billing_address.nil?
              hash['contactDetails'] = @contact_details.to_h unless @contact_details.nil?
              hash['device'] = @device.to_h unless @device.nil?
              hash['isPreviousCustomer'] = @is_previous_customer unless @is_previous_customer.nil?
              hash['locale'] = @locale unless @locale.nil?
              hash['personalInformation'] = @personal_information.to_h unless @personal_information.nil?
              hash['shippingAddress'] = @shipping_address.to_h unless @shipping_address.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'account'
                raise TypeError, "value '%s' is not a Hash" % [hash['account']] unless hash['account'].is_a? Hash
                @account = Worldline::Connect::SDK::V1::Domain::CustomerAccountRiskAssessment.new_from_hash(hash['account'])
              end
              if hash.has_key? 'accountType'
                @account_type = hash['accountType']
              end
              if hash.has_key? 'billingAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['billingAddress']] unless hash['billingAddress'].is_a? Hash
                @billing_address = Worldline::Connect::SDK::V1::Domain::Address.new_from_hash(hash['billingAddress'])
              end
              if hash.has_key? 'contactDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']] unless hash['contactDetails'].is_a? Hash
                @contact_details = Worldline::Connect::SDK::V1::Domain::ContactDetailsRiskAssessment.new_from_hash(hash['contactDetails'])
              end
              if hash.has_key? 'device'
                raise TypeError, "value '%s' is not a Hash" % [hash['device']] unless hash['device'].is_a? Hash
                @device = Worldline::Connect::SDK::V1::Domain::CustomerDeviceRiskAssessment.new_from_hash(hash['device'])
              end
              if hash.has_key? 'isPreviousCustomer'
                @is_previous_customer = hash['isPreviousCustomer']
              end
              if hash.has_key? 'locale'
                @locale = hash['locale']
              end
              if hash.has_key? 'personalInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['personalInformation']] unless hash['personalInformation'].is_a? Hash
                @personal_information = Worldline::Connect::SDK::V1::Domain::PersonalInformationRiskAssessment.new_from_hash(hash['personalInformation'])
              end
              if hash.has_key? 'shippingAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['shippingAddress']] unless hash['shippingAddress'].is_a? Hash
                @shipping_address = Worldline::Connect::SDK::V1::Domain::AddressPersonal.new_from_hash(hash['shippingAddress'])
              end
            end
          end
        end
      end
    end
  end
end
