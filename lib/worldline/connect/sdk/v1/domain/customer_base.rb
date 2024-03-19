#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/company_information'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::CompanyInformation] company_information
          # @attr [String] merchant_customer_id
          # @attr [String] vat_number
          class CustomerBase < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :company_information

            attr_accessor :merchant_customer_id

            #
            # @deprecated Use companyInformation.vatNumber instead
            attr_accessor :vat_number

            # @return (Hash)
            def to_h
              hash = super
              hash['companyInformation'] = @company_information.to_h unless @company_information.nil?
              hash['merchantCustomerId'] = @merchant_customer_id unless @merchant_customer_id.nil?
              hash['vatNumber'] = @vat_number unless @vat_number.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'companyInformation'
                raise TypeError, "value '%s' is not a Hash" % [hash['companyInformation']] unless hash['companyInformation'].is_a? Hash
                @company_information = Worldline::Connect::SDK::V1::Domain::CompanyInformation.new_from_hash(hash['companyInformation'])
              end
              if hash.has_key? 'merchantCustomerId'
                @merchant_customer_id = hash['merchantCustomerId']
              end
              if hash.has_key? 'vatNumber'
                @vat_number = hash['vatNumber']
              end
            end
          end
        end
      end
    end
  end
end
