#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/payment_creation_references'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [true/false] is_checked_remember_me
          # @attr [true/false] is_new_token
          # @attr [String] token
          # @attr [true/false] tokenization_succeeded
          class PaymentCreationOutput < Worldline::Connect::SDK::V1::Domain::PaymentCreationReferences

            attr_accessor :is_checked_remember_me

            attr_accessor :is_new_token

            attr_accessor :token

            attr_accessor :tokenization_succeeded

            # @return (Hash)
            def to_h
              hash = super
              hash['isCheckedRememberMe'] = @is_checked_remember_me unless @is_checked_remember_me.nil?
              hash['isNewToken'] = @is_new_token unless @is_new_token.nil?
              hash['token'] = @token unless @token.nil?
              hash['tokenizationSucceeded'] = @tokenization_succeeded unless @tokenization_succeeded.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'isCheckedRememberMe'
                @is_checked_remember_me = hash['isCheckedRememberMe']
              end
              if hash.has_key? 'isNewToken'
                @is_new_token = hash['isNewToken']
              end
              if hash.has_key? 'token'
                @token = hash['token']
              end
              if hash.has_key? 'tokenizationSucceeded'
                @tokenization_succeeded = hash['tokenizationSucceeded']
              end
            end
          end
        end
      end
    end
  end
end
