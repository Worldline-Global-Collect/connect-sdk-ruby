#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/domain/data_object'
require 'worldline/connect/sdk/v1/domain/amount_of_money'
require 'worldline/connect/sdk/v1/domain/dispute_creation_detail'
require 'worldline/connect/sdk/v1/domain/dispute_reference'
require 'worldline/connect/sdk/v1/domain/hosted_file'

module Worldline
  module Connect
    module SDK
      module V1
        module Domain
          # @attr [Worldline::Connect::SDK::V1::Domain::AmountOfMoney] amount_of_money
          # @attr [String] contact_person
          # @attr [Worldline::Connect::SDK::V1::Domain::DisputeCreationDetail] creation_details
          # @attr [String] email_address
          # @attr [Array<Worldline::Connect::SDK::V1::Domain::HostedFile>] files
          # @attr [Worldline::Connect::SDK::V1::Domain::DisputeReference] reference
          # @attr [String] reply_to
          # @attr [String] request_message
          # @attr [String] response_message
          class DisputeOutput < Worldline::Connect::SDK::Domain::DataObject

            attr_accessor :amount_of_money

            attr_accessor :contact_person

            attr_accessor :creation_details

            attr_accessor :email_address

            attr_accessor :files

            attr_accessor :reference

            attr_accessor :reply_to

            attr_accessor :request_message

            attr_accessor :response_message

            # @return (Hash)
            def to_h
              hash = super
              hash['amountOfMoney'] = @amount_of_money.to_h unless @amount_of_money.nil?
              hash['contactPerson'] = @contact_person unless @contact_person.nil?
              hash['creationDetails'] = @creation_details.to_h unless @creation_details.nil?
              hash['emailAddress'] = @email_address unless @email_address.nil?
              hash['files'] = @files.collect{|val| val.to_h} unless @files.nil?
              hash['reference'] = @reference.to_h unless @reference.nil?
              hash['replyTo'] = @reply_to unless @reply_to.nil?
              hash['requestMessage'] = @request_message unless @request_message.nil?
              hash['responseMessage'] = @response_message unless @response_message.nil?
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
              if hash.has_key? 'creationDetails'
                raise TypeError, "value '%s' is not a Hash" % [hash['creationDetails']] unless hash['creationDetails'].is_a? Hash
                @creation_details = Worldline::Connect::SDK::V1::Domain::DisputeCreationDetail.new_from_hash(hash['creationDetails'])
              end
              if hash.has_key? 'emailAddress'
                @email_address = hash['emailAddress']
              end
              if hash.has_key? 'files'
                raise TypeError, "value '%s' is not an Array" % [hash['files']] unless hash['files'].is_a? Array
                @files = []
                hash['files'].each do |e|
                  @files << Worldline::Connect::SDK::V1::Domain::HostedFile.new_from_hash(e)
                end
              end
              if hash.has_key? 'reference'
                raise TypeError, "value '%s' is not a Hash" % [hash['reference']] unless hash['reference'].is_a? Hash
                @reference = Worldline::Connect::SDK::V1::Domain::DisputeReference.new_from_hash(hash['reference'])
              end
              if hash.has_key? 'replyTo'
                @reply_to = hash['replyTo']
              end
              if hash.has_key? 'requestMessage'
                @request_message = hash['requestMessage']
              end
              if hash.has_key? 'responseMessage'
                @response_message = hash['responseMessage']
              end
            end
          end
        end
      end
    end
  end
end
