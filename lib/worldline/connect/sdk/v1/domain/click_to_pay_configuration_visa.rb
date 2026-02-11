#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/click_to_pay_scheme_configuration_base'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] encryption_key
          # @attr [String] n_modulus
          class ClickToPayConfigurationVisa < Worldline::Connect::SDK::V1::Domain::ClickToPaySchemeConfigurationBase

            attr_accessor :encryption_key

            attr_accessor :n_modulus

            # @return (Hash)
            def to_h
              hash = super
              hash['encryptionKey'] = @encryption_key unless @encryption_key.nil?
              hash['nModulus'] = @n_modulus unless @n_modulus.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'encryptionKey'
                @encryption_key = hash['encryptionKey']
              end
              if hash.has_key? 'nModulus'
                @n_modulus = hash['nModulus']
              end
            end
          end
        end
      end
    end
  end
end
