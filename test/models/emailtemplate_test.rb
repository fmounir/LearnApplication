require 'test_helper'

class EmailtemplateTest < ActiveSupport::TestCase
  setup do
    @emailTemplate = Emailtemplate.new
  end
  
  test "shouldnt save empty key" do
  
    @emailTemplate.key = nil
    @emailTemplate.body = "string"
    @emailTemplate.subject = "string"
    assert_not @emailTemplate.save 
  end
  
   test "shouldnt save empty subject" do
    emailTemplate.key = "string"
    emailTemplate.body = "string"
    emailTemplate.subject = nil
    assert_not emailTemplate.save 
  end
  
  
   test "shouldnt save empty body" do
    emailTemplate.key = "string"
    emailTemplate.body = nil
    emailTemplate.subject = "string"
    assert_not emailTemplate.save 
  end
  
end
