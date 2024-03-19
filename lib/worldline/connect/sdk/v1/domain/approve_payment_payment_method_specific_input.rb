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
          # @attr [String] date_collect
          # @attr [String] token
          class ApprovePaymentPaymentMethodSpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :date_collect

            attr_accessor :token

            # @return (Hash)
            def to_h
              hash = super
              hash['dateCollect'] = @date_collect unless @date_collect.nil?
              hash['token'] = @token unless @token.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'dateCollect'
                @date_collect = hash['dateCollect']
              end
              if hash.has_key? 'token'
                @token = hash['token']
              end
            end
          end
        end
      end
    end
  end
end
