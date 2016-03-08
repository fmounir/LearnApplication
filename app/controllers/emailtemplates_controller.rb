class EmailtemplatesController < ApplicationController
  def index
  end
  
  def new
    @emailtemplate = Emailtemplate.new
  end
  
  def create
   @emailtemplate = Emailtemplate.new
   @emailtemplate.subject = params[:subject]
   @emailtemplate.body = params[:body]
   @emailtemplate.key = params[:key]
   
   if(@emailtemplate.save)
     redirect_to emailtemplates_path(@emailtemplate)    
   end
  
  end
  
  def destroy
  end
  
end
