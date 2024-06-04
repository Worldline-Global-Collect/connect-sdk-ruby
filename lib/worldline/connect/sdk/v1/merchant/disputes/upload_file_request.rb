#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/communication/multipart_form_data_object'
require 'worldline/connect/sdk/communication/multipart_form_data_request'

module Worldline
  module Connect
    module SDK
      module V1
        module Merchant
          module Disputes
            # Multipart/form-data parameters for {https://apireference.connect.worldline-solutions.com/fileserviceapi/v1/en_US/ruby/disputes/uploadFile.html Upload File}
            #
            # @attr [Worldline::Connect::SDK::Domain::UploadableFile] file
            class UploadFileRequest < Worldline::Connect::SDK::Communication::MultipartFormDataRequest

              attr_accessor :file

              # @return [Worldline::Connect::SDK::Communication::MultipartFormDataObject] representing the attributes of this class
              def to_multipart_form_data_object
                result = MultipartFormDataObject.new
                result.add_file('file', @file) unless @file.nil?
                result
              end
            end
          end
        end
      end
    end
  end
end
