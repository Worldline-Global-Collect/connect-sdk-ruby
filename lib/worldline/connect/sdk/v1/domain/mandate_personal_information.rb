#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/mandate_personal_name'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::MandatePersonalName] name
          # @attr [String] title
          class MandatePersonalInformation < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :name

            attr_accessor :title

            # @return (Hash)
            def to_h
              hash = super
              hash['name'] = @name.to_h unless @name.nil?
              hash['title'] = @title unless @title.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'name'
                raise TypeError, "value '%s' is not a Hash" % [hash['name']] unless hash['name'].is_a? Hash
                @name = Worldline::Connect::SDK::V1::Domain::MandatePersonalName.new_from_hash(hash['name'])
              end
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
