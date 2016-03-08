class EmailtemplatesController < ApplicationController
  def index
  end
  
  def new
    @emailtemplate = Emailtemplate.new
  end
  
  def create
   @emailtemplate = Emailtemplate.new
   @emailtemplate.title = params(:title)
   @emailtemplate.body = params(:body)
   @emailtemplate.key = params(:key)
   @emailtemplate.save
  end
  
  def destroy
  end
  
end
