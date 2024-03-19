#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/card_essentials'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] issue_number
          class CardWithoutCvv < Worldline::Connect::SDK::V1::Domain::CardEssentials

            attr_accessor :issue_number

            # @return (Hash)
            def to_h
              hash = super
              hash['issueNumber'] = @issue_number unless @issue_number.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'issueNumber'
                @issue_number = hash['issueNumber']
              end
            end
          end
        end
      end
    end
  end
end
