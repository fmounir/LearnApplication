require 'test_helper'

class EmailtemplatesControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  
  test "should save email and redirect" do
  sign_in users(:one)
    get :new 
    assert_response :success
    
    assert_difference('Emailtemplate.count') do
        post :create  , emailtemplate: {key:'string', subject:'string', body:'body'}
    end
    
    assert_redirected_to emailtemplates_path(assigns(:emailtemplate))
  end

end
