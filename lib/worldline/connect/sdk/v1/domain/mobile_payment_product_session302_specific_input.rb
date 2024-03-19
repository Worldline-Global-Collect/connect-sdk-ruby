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
          # @attr [String] display_name
          # @attr [String] domain_name
          # @attr [String] validation_url
          class MobilePaymentProductSession302SpecificInput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :display_name

            attr_accessor :domain_name

            attr_accessor :validation_url

            # @return (Hash)
            def to_h
              hash = super
              hash['displayName'] = @display_name unless @display_name.nil?
              hash['domainName'] = @domain_name unless @domain_name.nil?
              hash['validationUrl'] = @validation_url unless @validation_url.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'displayName'
                @display_name = hash['displayName']
              end
              if hash.has_key? 'domainName'
                @domain_name = hash['domainName']
              end
              if hash.has_key? 'validationUrl'
                @validation_url = hash['validationUrl']
              end
            end
          end
        end
      end
    end
  end
end
