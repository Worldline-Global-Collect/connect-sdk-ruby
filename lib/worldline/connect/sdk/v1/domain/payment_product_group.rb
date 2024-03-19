#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/account_on_file'
require 'worldline/connect/sdk/v1/domain/payment_product_display_hints'
require 'worldline/connect/sdk/v1/domain/payment_product_field'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::AccountOnFile>] accounts_on_file
          # @attr [true/false] allows_installments
          # @attr [true/false] device_fingerprint_enabled
          # @attr [Worldline::Connect::SDK::V1::Domain::PaymentProductDisplayHints] display_hints
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::PaymentProductField>] fields
          # @attr [String] id
          class PaymentProductGroup < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :accounts_on_file

            attr_accessor :allows_installments

            attr_accessor :device_fingerprint_enabled

            attr_accessor :display_hints

            attr_accessor :fields

            attr_accessor :id

            # @return (Hash)
            def to_h
              hash = super
              hash['accountsOnFile'] = @accounts_on_file.collect{|val| val.to_h} unless @accounts_on_file.nil?
              hash['allowsInstallments'] = @allows_installments unless @allows_installments.nil?
              hash['deviceFingerprintEnabled'] = @device_fingerprint_enabled unless @device_fingerprint_enabled.nil?
              hash['displayHints'] = @display_hints.to_h unless @display_hints.nil?
              hash['fields'] = @fields.collect{|val| val.to_h} unless @fields.nil?
              hash['id'] = @id unless @id.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'accountsOnFile'
                raise TypeError, "value '%s' is not an Array" % [hash['accountsOnFile']] unless hash['accountsOnFile'].is_a? Array
                @accounts_on_file = []
                hash['accountsOnFile'].each do |e|
                  @accounts_on_file << Worldline::Connect::SDK::V1::Domain::AccountOnFile.new_from_hash(e)
                end
              end
              if hash.has_key? 'allowsInstallments'
                @allows_installments = hash['allowsInstallments']
              end
              if hash.has_key? 'deviceFingerprintEnabled'
                @device_fingerprint_enabled = hash['deviceFingerprintEnabled']
              end
              if hash.has_key? 'displayHints'
                raise TypeError, "value '%s' is not a Hash" % [hash['displayHints']] unless hash['displayHints'].is_a? Hash
                @display_hints = Worldline::Connect::SDK::V1::Domain::PaymentProductDisplayHints.new_from_hash(hash['displayHints'])
              end
              if hash.has_key? 'fields'
                raise TypeError, "value '%s' is not an Array" % [hash['fields']] unless hash['fields'].is_a? Array
                @fields = []
                hash['fields'].each do |e|
                  @fields << Worldline::Connect::SDK::V1::Domain::PaymentProductField.new_from_hash(e)
                end
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
            end
          end
        end
      end
    end
  end
end
