#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/directory_entry'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::DirectoryEntry>] entries
          class Directory < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :entries

            # @return (Hash)
            def to_h
              hash = super
              hash['entries'] = @entries.collect{|val| val.to_h} unless @entries.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'entries'
                raise TypeError, "value '%s' is not an Array" % [hash['entries']] unless hash['entries'].is_a? Array
                @entries = []
                hash['entries'].each do |e|
                  @entries << Worldline::Connect::SDK::V1::Domain::DirectoryEntry.new_from_hash(e)
                end
              end
            end
          end
        end
      end
    end
  end
end
