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
          # @attr [String] email_message_type
          class ContactDetailsBase < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :email_address

            attr_accessor :email_message_type

            # @return (Hash)
            def to_h
              hash = super
              hash['emailAddress'] = @email_address unless @email_address.nil?
              hash['emailMessageType'] = @email_message_type unless @email_message_type.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'emailAddress'
                @email_address = hash['emailAddress']
              end
              if hash.has_key? 'emailMessageType'
                @email_message_type = hash['emailMessageType']
              end
            end
          end
        end
      end
    end
  end
end
