require 'test_helper'

class EmailtemplateTest < ActiveSupport::TestCase
  
  test "shouldnt save empty key" do
    emailTemplate = Emailtemplate.new
    emailTemplate.key = nil
    emailTemplate.body = "string"
    emailTemplate.subject = "string"
    assert_not emailTemplate.save 
  end
  
end
