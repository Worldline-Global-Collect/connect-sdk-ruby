#
# This class was auto-generated from the API references found at
# https://apireference.connect.worldline-solutions.com/
#
require 'worldline/connect/sdk/factory'
require 'worldline/connect/sdk/domain/uploadable_file'
require 'worldline/connect/sdk/v1/merchant/disputes/upload_file_request'

Disputes = Worldline::Connect::SDK::V1::Merchant::Disputes
UploadableFile = Worldline::Connect::SDK::Domain::UploadableFile

def example
  get_client do |client|
    body = Disputes::UploadFileRequest.new
    File.open("file.pdf", mode="rb") do |file_content|
      body.file = UploadableFile.new("file.pdf", file_content, "application/pdf")

      response = client.v1.merchant('merchantId').disputes.upload_file('disputeId', body)
    end
  end
end

def get_client
  api_key_id = ENV.fetch('connect.api.apiKeyId', 'someKey')
  secret_api_key = ENV.fetch('connect.api.secretApiKey', 'someSecret')
  configuration_file_name = File.join(__FILE__, '..', '..', '..', 'example_configuration.yml')
  yield client = Worldline::Connect::SDK::Factory.create_client_from_file(configuration_file_name, api_key_id, secret_api_key)
ensure
  # Free networking resources when done
  client.close unless client.nil?
end
