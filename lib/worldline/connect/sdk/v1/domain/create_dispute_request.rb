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
          # @attr [String] contact_person
          # @attr [String] email_address
          # @attr [String] reply_to
          # @attr [String] request_message
          class CreateDisputeRequest < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount_of_money

            attr_accessor :contact_person

            attr_accessor :email_address

            attr_accessor :reply_to

            attr_accessor :request_message

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['contactPerson'] = @contact_person unless @contact_person.nil?
              hash['emailAddress'] = @email_address unless @email_address.nil?
              hash['replyTo'] = @reply_to unless @reply_to.nil?
              hash['requestMessage'] = @request_message unless @request_message.nil?
              hash
            end

            def from_hash(hash)
              super
              if hash.has_key? 'amountOfMoney'
                raise TypeError, "value '%s' is not a Hash" % [hash['amountOfMoney']] unless hash['amountOfMoney'].is_a? Hash
                @amount_of_money = Worldline::Connect::SDK::V1::Domain::AmountOfMoney.new_from_hash(hash['amountOfMoney'])
              end
              if hash.has_key? 'contactPerson'
                @contact_person = hash['contactPerson']
              end
              if hash.has_key? 'emailAddress'
                @email_address = hash['emailAddress']
              end
              if hash.has_key? 'replyTo'
                @reply_to = hash['replyTo']
              end
              if hash.has_key? 'requestMessage'
                @request_message = hash['requestMessage']
              end
            end
          end
        end
      end
    end
  end
end
