#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_of_money'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money
          # @attr [String] id
          # @attr [String] status
          # @attr [String] timestamp
          # @attr [String] type
          class PaymentOperation < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount_of_money

            attr_accessor :id

            attr_accessor :status

            attr_accessor :timestamp

            attr_accessor :type

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['id'] = @id unless @id.nil?
              hash['status'] = @status unless @status.nil?
              hash['timestamp'] = @timestamp unless @timestamp.nil?
              hash['type'] = @type unless @type.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'id'
                @id = hash['id']
              end
              if hash.has_key? 'status'
                @status = hash['status']
              end
              if hash.has_key? 'timestamp'
                @timestamp = hash['timestamp']
              end
              if hash.has_key? 'type'
                @type = hash['type']
              end
            end
          end
        end
      end
    end
  end
end
