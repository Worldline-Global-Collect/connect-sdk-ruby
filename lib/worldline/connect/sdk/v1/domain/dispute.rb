#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/dispute_output'
require 'worldline/connect/sdk/v1/domain/dispute_status_output'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::DisputeOutput] dispute_output
          # @attr [String] id
          # @attr [String] payment_id
          # @attr [String] status
          # @attr [Worldline::Connect::SDK::V1::Domain::DisputeStatusOutput] status_output
          class Dispute < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :dispute_output

            attr_accessor :id

            attr_accessor :payment_id

            attr_accessor :status

            attr_accessor :status_output

            # @return (Hash)
            def to_h
              hash = super
              hash['disputeOutput'] = @dispute_output.to_h unless @dispute_output.nil?
              hash['id'] = @id unless @id.nil?
              hash['paymentId'] = @payment_id unless @payment_id.nil?
              hash['status'] = @status unless @status.nil?
              hash['statusOutput'] = @status_output.to_h unless @status_output.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'disputeOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['disputeOutput']] unless hash['disputeOutput'].is_a? Hash
                @dispute_output = Worldline::Connect::SDK::V1::Domain::DisputeOutput.new_from_hash(hash['disputeOutput'])
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'paymentId'
                @payment_id = hash['paymentId']
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
              if hash.has_key? 'statusOutput'
                raise TypeError, "value '%s' is not a Hash" % [hash['statusOutput']] unless hash['statusOutput'].is_a? Hash
                @status_output = Worldline::Connect::SDK::V1::Domain::DisputeStatusOutput.new_from_hash(hash['statusOutput'])
              end
            end
          end
        end
      end
    end
  end
end
