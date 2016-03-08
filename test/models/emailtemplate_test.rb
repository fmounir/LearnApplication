require 'test_helper'

class EmailtemplateTest < ActiveSupport::TestCase
  
  test "shouldnt save empty key" do
    emailTemplate = Emailtemplate.new
    emailTemplate.key = nil
    emailTemplate.body = "string"
    emailTemplate.subject = "string"
    assert_not emailTemplate.save 
  end
  
   test "shouldnt save empty subject" do
    emailTemplate = Emailtemplate.new
    emailTemplate.key = "string"
    emailTemplate.body = "string"
    emailTemplate.subject = nil
    assert_not emailTemplate.save 
  end
  
  
   test "shouldnt save empty body" do
    emailTemplate = Emailtemplate.new
    emailTemplate.key = "string"
    emailTemplate.body = nil
    emailTemplate.subject = "string"
    assert_not emailTemplate.save 
  end
  
end
