#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/in_auth'
require 'worldline/connect/sdk/v1/domain/microsoft_fraud_results'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] fraud_service_result
          # @attr [Worldline::Connect::SDK::V1::Domain::InAuth] in_auth
          # @attr [Worldline::Connect::SDK::V1::Domain::MicrosoftFraudResults] microsoft_fraud_protection
          class FraudResults < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :fraud_service_result

            attr_accessor :in_auth

            attr_accessor :microsoft_fraud_protection

            # @return (Hash)
            def to_h
              hash = super
              hash['fraudServiceResult'] = @fraud_service_result unless @fraud_service_result.nil?
              hash['inAuth'] = @in_auth.to_h unless @in_auth.nil?
              hash['microsoftFraudProtection'] = @microsoft_fraud_protection.to_h unless @microsoft_fraud_protection.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'fraudServiceResult'
                @fraud_service_result = hash['fraudServiceResult']
              end
              if hash.has_key? 'inAuth'
                raise TypeError, "value '%s' is not a Hash" % [hash['inAuth']] unless hash['inAuth'].is_a? Hash
                @in_auth = Worldline::Connect::SDK::V1::Domain::InAuth.new_from_hash(hash['inAuth'])
              end
              if hash.has_key? 'microsoftFraudProtection'
                raise TypeError, "value '%s' is not a Hash" % [hash['microsoftFraudProtection']] unless hash['microsoftFraudProtection'].is_a? Hash
                @microsoft_fraud_protection = Worldline::Connect::SDK::V1::Domain::MicrosoftFraudResults.new_from_hash(hash['microsoftFraudProtection'])
              end
            end
          end
        end
      end
    end
  end
end
