#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] first_name
          # @attr [String] surname
          # @attr [String] surname_prefix
          class PayoutRecipient < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :first_name

            attr_accessor :surname

            attr_accessor :surname_prefix

            # @return (Hash)
            def to_h
              hash = super
              hash['firstName'] = @first_name unless @first_name.nil?
              hash['surname'] = @surname unless @surname.nil?
              hash['surnamePrefix'] = @surname_prefix unless @surname_prefix.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'firstName'
                @first_name = hash['firstName']
              end
              if hash.has_key? 'surname'
                @surname = hash['surname']
              end
              if hash.has_key? 'surnamePrefix'
                @surname_prefix = hash['surnamePrefix']
              end
            end
          end
        end
      end
    end
  end
end
