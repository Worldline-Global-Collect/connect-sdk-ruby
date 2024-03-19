#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/v1/domain/contact_details_token'
require 'worldline/connect/sdk/v1/domain/customer_token'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::ContactDetailsToken] contact_details
          class CustomerTokenWithContactDetails < Worldline::Connect::SDK::V1::Domain::CustomerToken

            attr_accessor :contact_details

            # @return (Hash)
            def to_h
              hash = super
              hash['contactDetails'] = @contact_details.to_h unless @contact_details.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'contactDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['contactDetails']] unless hash['contactDetails'].is_a? Hash
                @contact_details = Worldline::Connect::SDK::V1::Domain::ContactDetailsToken.new_from_hash(hash['contactDetails'])
              end
            end
          end
        end
      end
    end
  end
end
