require "spec_helper"

describe Remotely::NonJsonResponseError do
  let(:exception) { Remotely::NonJsonResponseError.new("<html lang='en'><head><title>Not JSON</title></head></html>") }

  it "should include the HTML response in the exception message" do
    exception.message.should match(/<title>Not JSON<\/title>/)
  end
end