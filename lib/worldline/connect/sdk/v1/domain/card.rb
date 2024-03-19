#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/card_without_cvv'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] cvv
          # @attr [String] partial_pin
          class Card < Worldline::Connect::SDK::V1::Domain::CardWithoutCvv

            attr_accessor :cvv

            attr_accessor :partial_pin

            # @return (Hash)
            def to_h
              hash = super
              hash['cvv'] = @cvv unless @cvv.nil?
              hash['partialPin'] = @partial_pin unless @partial_pin.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'cvv'
                @cvv = hash['cvv']
              end
              if hash.has_key? 'partialPin'
                @partial_pin = hash['partialPin']
              end
            end
          end
        end
      end
    end
  end
end
