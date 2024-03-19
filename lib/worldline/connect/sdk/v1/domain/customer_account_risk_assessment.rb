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
          # @attr [true/false] has_forgotten_password
          # @attr [true/false] has_password
          class CustomerAccountRiskAssessment < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :has_forgotten_password

            attr_accessor :has_password

            # @return (Hash)
            def to_h
              hash = super
              hash['hasForgottenPassword'] = @has_forgotten_password unless @has_forgotten_password.nil?
              hash['hasPassword'] = @has_password unless @has_password.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'hasForgottenPassword'
                @has_forgotten_password = hash['hasForgottenPassword']
              end
              if hash.has_key? 'hasPassword'
                @has_password = hash['hasPassword']
              end
            end
          end
        end
      end
    end
  end
end
