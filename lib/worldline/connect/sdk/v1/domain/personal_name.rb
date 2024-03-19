#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/personal_name_base'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [String] title
          class PersonalName < Worldline::Connect::SDK::V1::Domain::PersonalNameBase

            attr_accessor :title

            # @return (Hash)
            def to_h
              hash = super
              hash['title'] = @title unless @title.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'title'
                @title = hash['title']
              end
            end
          end
        end
      end
    end
  end
end
