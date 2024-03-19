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
          # @attr [String] email_address
          class MandateContactDetails < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :email_address

            # @return (Hash)
            def to_h
              hash = super
              hash['emailAddress'] = @email_address unless @email_address.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'emailAddress'
                @email_address = hash['emailAddress']
              end
            end
          end
        end
      end
    end
  end
end
