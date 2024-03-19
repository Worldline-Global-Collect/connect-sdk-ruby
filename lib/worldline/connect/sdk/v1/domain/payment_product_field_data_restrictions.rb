#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/payment_product_field_validators'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [true/false] is_required
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProductFieldValidators] validators
          class PaymentProductFieldDataRestrictions < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :is_required

            attr_accessor :validators

            # @return (Hash)
            def to_h
              hash = super
              hash['isRequired'] = @is_required unless @is_required.nil?
              hash['validators'] = @validators.to_h unless @validators.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'isRequired'
                @is_required = hash['isRequired']
              end
              if hash.has_key? 'validators'
                raise TypeError, "value '%s' is not a Hash" % [hash['validators']] unless hash['validators'].is_a? Hash
                @validators = Worldline::Connect::SDK::V1::Domain::PaymentProductFieldValidators.new_from_hash(hash['validators'])
              end
            end
          end
        end
      end
    end
  end
end
