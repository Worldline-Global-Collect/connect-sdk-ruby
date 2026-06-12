require 'spec_helper'

describe 'ResponseHeader' do
  ResponseHeader ||= Worldline::Connect::SDK::Communication::ResponseHeader

  test_data = {
    "attachment; filename=testfile" => "testfile",
    "attachment; filename=\"testfile\"" => "testfile",
    "attachment; filename=\"testfile" => "\"testfile",
    "attachment; filename=testfile\"" => "testfile\"",
    "attachment; filename='testfile'" => "testfile",
    "attachment; filename='testfile" => "'testfile",
    "attachment; filename=testfile'" => "testfile'",

    "filename=testfile" => "testfile",
    "filename=\"testfile\"" => "testfile",
    "filename=\"testfile" => "\"testfile",
    "filename=testfile\"" => "testfile\"",
    "filename='testfile'" => "testfile",
    "filename='testfile" => "'testfile",
    "filename=testfile'" => "testfile'",

    "attachment; filename=testfile; x=y" => "testfile",
    "attachment; filename=\"testfile\"; x=y" => "testfile",
    "attachment; filename=\"testfile; x=y" => "\"testfile",
    "attachment; filename=testfile\"; x=y" => "testfile\"",
    "attachment; filename='testfile'; x=y" => "testfile",
    "attachment; filename='testfile; x=y" => "'testfile",
    "attachment; filename=testfile'; x=y" => "testfile'",

    "attachment" => nil,

    "filename=\"" => "\"",
    "filename='" => "'",
  }

  it 'extracts the correct disposition filename from an array of ResponseHeader' do
    test_data.each do |value, expected|
      headers = [ResponseHeader.new('Content-Disposition', value)]
      filename = ResponseHeader.get_disposition_filename(headers)
      expect(filename).to eq(expected)
    end
    headers = []
    filename = ResponseHeader.get_disposition_filename(headers)
    expect(filename).to be_nil
  end
end
