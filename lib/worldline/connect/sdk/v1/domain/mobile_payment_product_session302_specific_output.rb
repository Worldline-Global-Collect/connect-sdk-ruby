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
          # @attr [String] session_object
          class MobilePaymentProductSession302SpecificOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :session_object

            # @return (Hash)
            def to_h
              hash = super
              hash['sessionObject'] = @session_object unless @session_object.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'sessionObject'
                @session_object = hash['sessionObject']
              end
            end
          end
        end
      end
    end
  end
end
