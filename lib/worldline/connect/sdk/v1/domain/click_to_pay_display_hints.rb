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
          # @attr [String] logo
          class ClickToPayDisplayHints < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :logo

            # @return (Hash)
            def to_h
              hash = super
              hash['logo'] = @logo unless @logo.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'logo'
                @logo = hash['logo']
              end
            end
          end
        end
      end
    end
  end
end
