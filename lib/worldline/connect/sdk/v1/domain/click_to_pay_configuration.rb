#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/click_to_pay_configuration_mastercard'
require 'worldline/connect/sdk/v1/domain/click_to_pay_configuration_visa'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::ClickToPayConfigurationMastercard] mastercard
          # @attr [Worldline::Connect::SDK::V1::Domain::ClickToPayConfigurationVisa] visa
          class ClickToPayConfiguration < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :mastercard

            attr_accessor :visa

            # @return (Hash)
            def to_h
              hash = super
              hash['mastercard'] = @mastercard.to_h unless @mastercard.nil?
              hash['visa'] = @visa.to_h unless @visa.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'mastercard'
                raise TypeError, "value '%s' is not a Hash" % [hash['mastercard']] unless hash['mastercard'].is_a? Hash
                @mastercard = Worldline::Connect::SDK::V1::Domain::ClickToPayConfigurationMastercard.new_from_hash(hash['mastercard'])
              end
              if hash.has_key? 'visa'
                raise TypeError, "value '%s' is not a Hash" % [hash['visa']] unless hash['visa'].is_a? Hash
                @visa = Worldline::Connect::SDK::V1::Domain::ClickToPayConfigurationVisa.new_from_hash(hash['visa'])
              end
            end
          end
        end
      end
    end
  end
end
