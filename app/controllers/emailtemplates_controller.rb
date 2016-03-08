class EmailtemplatesController < ApplicationController
  def index
  end
  
  def new
    @emailtemplate = Emailtemplate.new
  end
  
  def create
   @emailtemplate = Emailtemplate.new(params.require(:emailtemplate).permit(:key, :subject,:body) )
  
   if(@emailtemplate.save)
     redirect_to emailtemplates_path(@emailtemplate)  
   else
     render 'new'
   end
   
  
  end
  
  def destroy
  end
  
end
