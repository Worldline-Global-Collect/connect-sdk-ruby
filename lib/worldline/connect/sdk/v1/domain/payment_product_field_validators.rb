#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/boleto_bancario_requiredness_validator'
require 'worldline/connect/sdk/v1/domain/empty_validator'
require 'worldline/connect/sdk/v1/domain/fixed_list_validator'
require 'worldline/connect/sdk/v1/domain/length_validator'
require 'worldline/connect/sdk/v1/domain/range_validator'
require 'worldline/connect/sdk/v1/domain/regular_expression_validator'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::BoletoBancarioRequirednessValidator] boleto_bancario_requiredness
          # @attr [Worldline::Connect::SDK::V1::Domain::EmptyValidator] email_address
          # @attr [Worldline::Connect::SDK::V1::Domain::EmptyValidator] expiration_date
          # @attr [Worldline::Connect::SDK::V1::Domain::FixedListValidator] fixed_list
          # @attr [Worldline::Connect::SDK::V1::Domain::EmptyValidator] iban
          # @attr [Worldline::Connect::SDK::V1::Domain::LengthValidator] length
          # @attr [Worldline::Connect::SDK::V1::Domain::EmptyValidator] luhn
          # @attr [Worldline::Connect::SDK::V1::Domain::RangeValidator] range
          # @attr [Worldline::Connect::SDK::V1::Domain::RegularExpressionValidator] regular_expression
          # @attr [Worldline::Connect::SDK::V1::Domain::EmptyValidator] resident_id_number
          # @attr [Worldline::Connect::SDK::V1::Domain::EmptyValidator] terms_and_conditions
          class PaymentProductFieldValidators < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :boleto_bancario_requiredness

            attr_accessor :email_address

            attr_accessor :expiration_date

            attr_accessor :fixed_list

            attr_accessor :iban

            attr_accessor :length

            attr_accessor :luhn

            attr_accessor :range

            attr_accessor :regular_expression

            attr_accessor :resident_id_number

            attr_accessor :terms_and_conditions

            # @return (Hash)
            def to_h
              hash = super
              hash['boletoBancarioRequiredness'] = @boleto_bancario_requiredness.to_h unless @boleto_bancario_requiredness.nil?
              hash['emailAddress'] = @email_address.to_h unless @email_address.nil?
              hash['expirationDate'] = @expiration_date.to_h unless @expiration_date.nil?
              hash['fixedList'] = @fixed_list.to_h unless @fixed_list.nil?
              hash['iban'] = @iban.to_h unless @iban.nil?
              hash['length'] = @length.to_h unless @length.nil?
              hash['luhn'] = @luhn.to_h unless @luhn.nil?
              hash['range'] = @range.to_h unless @range.nil?
              hash['regularExpression'] = @regular_expression.to_h unless @regular_expression.nil?
              hash['residentIdNumber'] = @resident_id_number.to_h unless @resident_id_number.nil?
              hash['termsAndConditions'] = @terms_and_conditions.to_h unless @terms_and_conditions.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'boletoBancarioRequiredness'
                raise TypeError, "value '%s' is not a Hash" % [hash['boletoBancarioRequiredness']] unless hash['boletoBancarioRequiredness'].is_a? Hash
                @boleto_bancario_requiredness = Worldline::Connect::SDK::V1::Domain::BoletoBancarioRequirednessValidator.new_from_hash(hash['boletoBancarioRequiredness'])
              end
              if hash.has_key? 'emailAddress'
                raise TypeError, "value '%s' is not a Hash" % [hash['emailAddress']] unless hash['emailAddress'].is_a? Hash
                @email_address = Worldline::Connect::SDK::V1::Domain::EmptyValidator.new_from_hash(hash['emailAddress'])
              end
              if hash.has_key? 'expirationDate'
                raise TypeError, "value '%s' is not a Hash" % [hash['expirationDate']] unless hash['expirationDate'].is_a? Hash
                @expiration_date = Worldline::Connect::SDK::V1::Domain::EmptyValidator.new_from_hash(hash['expirationDate'])
              end
              if hash.has_key? 'fixedList'
                raise TypeError, "value '%s' is not a Hash" % [hash['fixedList']] unless hash['fixedList'].is_a? Hash
                @fixed_list = Worldline::Connect::SDK::V1::Domain::FixedListValidator.new_from_hash(hash['fixedList'])
              end
              if hash.has_key? 'iban'
                raise TypeError, "value '%s' is not a Hash" % [hash['iban']] unless hash['iban'].is_a? Hash
                @iban = Worldline::Connect::SDK::V1::Domain::EmptyValidator.new_from_hash(hash['iban'])
              end
              if hash.has_key? 'length'
                raise TypeError, "value '%s' is not a Hash" % [hash['length']] unless hash['length'].is_a? Hash
                @length = Worldline::Connect::SDK::V1::Domain::LengthValidator.new_from_hash(hash['length'])
              end
              if hash.has_key? 'luhn'
                raise TypeError, "value '%s' is not a Hash" % [hash['luhn']] unless hash['luhn'].is_a? Hash
                @luhn = Worldline::Connect::SDK::V1::Domain::EmptyValidator.new_from_hash(hash['luhn'])
              end
              if hash.has_key? 'range'
                raise TypeError, "value '%s' is not a Hash" % [hash['range']] unless hash['range'].is_a? Hash
                @range = Worldline::Connect::SDK::V1::Domain::RangeValidator.new_from_hash(hash['range'])
              end
              if hash.has_key? 'regularExpression'
                raise TypeError, "value '%s' is not a Hash" % [hash['regularExpression']] unless hash['regularExpression'].is_a? Hash
                @regular_expression = Worldline::Connect::SDK::V1::Domain::RegularExpressionValidator.new_from_hash(hash['regularExpression'])
              end
              if hash.has_key? 'residentIdNumber'
                raise TypeError, "value '%s' is not a Hash" % [hash['residentIdNumber']] unless hash['residentIdNumber'].is_a? Hash
                @resident_id_number = Worldline::Connect::SDK::V1::Domain::EmptyValidator.new_from_hash(hash['residentIdNumber'])
              end
              if hash.has_key? 'termsAndConditions'
                raise TypeError, "value '%s' is not a Hash" % [hash['termsAndConditions']] unless hash['termsAndConditions'].is_a? Hash
                @terms_and_conditions = Worldline::Connect::SDK::V1::Domain::EmptyValidator.new_from_hash(hash['termsAndConditions'])
              end
            end
          end
        end
      end
    end
  end
end
