#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/hosted_mandate_info'
require 'worldline/connect/sdk/v1/domain/hosted_mandate_management_specific_input'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::HostedMandateInfo] create_mandate_info
          # @attr [Worldline::Connect::SDK::V1::Domain::HostedMandateManagementSpecificInput] hosted_mandate_management_specific_input
          class CreateHostedMandateManagementRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :create_mandate_info

            attr_accessor :hosted_mandate_management_specific_input

            # @return (Hash)
            def to_h
              hash = super
              hash['createMandateInfo'] = @create_mandate_info.to_h unless @create_mandate_info.nil?
              hash['hostedMandateManagementSpecificInput'] = @hosted_mandate_management_specific_input.to_h unless @hosted_mandate_management_specific_input.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'createMandateInfo'
                raise TypeError, "value '%s' is not a Hash" % [hash['createMandateInfo']] unless hash['createMandateInfo'].is_a? Hash
                @create_mandate_info = Worldline::Connect::SDK::V1::Domain::HostedMandateInfo.new_from_hash(hash['createMandateInfo'])
              end
              if hash.has_key? 'hostedMandateManagementSpecificInput'
                raise TypeError, "value '%s' is not a Hash" % [hash['hostedMandateManagementSpecificInput']] unless hash['hostedMandateManagementSpecificInput'].is_a? Hash
                @hosted_mandate_management_specific_input = Worldline::Connect::SDK::V1::Domain::HostedMandateManagementSpecificInput.new_from_hash(hash['hostedMandateManagementSpecificInput'])
              end
            end
          end
        end
      end
    end
  end
end
