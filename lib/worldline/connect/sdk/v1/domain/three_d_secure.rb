#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/abstract_three_d_secure'
require 'worldline/connect/sdk/v1/domain/external_cardholder_authentication_data'
require 'worldline/connect/sdk/v1/domain/redirection_data'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::ExternalCardholderAuthenticationData] external_cardholder_authentication_data
          # @attr [Worldline::Connect::SDK::V1::Domain::RedirectionData] redirection_data
          class ThreeDSecure < Worldline::Connect::SDK::V1::Domain::AbstractThreeDSecure

            attr_accessor :external_cardholder_authentication_data

            attr_accessor :redirection_data

            # @return (Hash)
            def to_h
              hash = super
              hash['externalCardholderAuthenticationData'] = @external_cardholder_authentication_data.to_h unless @external_cardholder_authentication_data.nil?
              hash['redirectionData'] = @redirection_data.to_h unless @redirection_data.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'externalCardholderAuthenticationData'
                raise TypeError, "value '%s' is not a Hash" % [hash['externalCardholderAuthenticationData']] unless hash['externalCardholderAuthenticationData'].is_a? Hash
                @external_cardholder_authentication_data = Worldline::Connect::SDK::V1::Domain::ExternalCardholderAuthenticationData.new_from_hash(hash['externalCardholderAuthenticationData'])
              end
              if hash.has_key? 'redirectionData'
                raise TypeError, "value '%s' is not a Hash" % [hash['redirectionData']] unless hash['redirectionData'].is_a? Hash
                @redirection_data = Worldline::Connect::SDK::V1::Domain::RedirectionData.new_from_hash(hash['redirectionData'])
              end
            end
          end
        end
      end
    end
  end
end
