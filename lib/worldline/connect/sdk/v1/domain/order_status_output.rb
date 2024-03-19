#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/api_error'
require 'worldline/connect/sdk/v1/domain/key_value_pair'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::APIError>] errors
          # @attr [true/false] is_cancellable
          # @attr [true/false] is_retriable
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::KeyValuePair>] provider_raw_output
          # @attr [String] status_category
          # @attr [Integer] status_code
          # @attr [String] status_code_change_date_time
          class OrderStatusOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :errors

            attr_accessor :is_cancellable

            attr_accessor :is_retriable

            attr_accessor :provider_raw_output

            attr_accessor :status_category

            attr_accessor :status_code

            attr_accessor :status_code_change_date_time

            # @return (Hash)
            def to_h
              hash = super
              hash['errors'] = @errors.collect{|val| val.to_h} unless @errors.nil?
              hash['isCancellable'] = @is_cancellable unless @is_cancellable.nil?
              hash['isRetriable'] = @is_retriable unless @is_retriable.nil?
              hash['providerRawOutput'] = @provider_raw_output.collect{|val| val.to_h} unless @provider_raw_output.nil?
              hash['statusCategory'] = @status_category unless @status_category.nil?
              hash['statusCode'] = @status_code unless @status_code.nil?
              hash['statusCodeChangeDateTime'] = @status_code_change_date_time unless @status_code_change_date_time.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'errors'
                raise TypeError, "value '%s' is not an Array" % [hash['errors']] unless hash['errors'].is_a? Array
                @errors = []
                hash['errors'].each do |e|
                  @errors << Worldline::Connect::SDK::V1::Domain::APIError.new_from_hash(e)
                end
              end
              if hash.has_key? 'isCancellable'
                @is_cancellable = hash['isCancellable']
              end
              if hash.has_key? 'isRetriable'
                @is_retriable = hash['isRetriable']
              end
              if hash.has_key? 'providerRawOutput'
                raise TypeError, "value '%s' is not an Array" % [hash['providerRawOutput']] unless hash['providerRawOutput'].is_a? Array
                @provider_raw_output = []
                hash['providerRawOutput'].each do |e|
                  @provider_raw_output << Worldline::Connect::SDK::V1::Domain::KeyValuePair.new_from_hash(e)
                end
              end
              if hash.has_key? 'statusCategory'
                @status_category = hash['statusCategory']
              end
              if hash.has_key? 'statusCode'
                @status_code = hash['statusCode']
              end
              if hash.has_key? 'statusCodeChangeDateTime'
                @status_code_change_date_time = hash['statusCodeChangeDateTime']
              end
            end
          end
        end
      end
    end
  end
end
