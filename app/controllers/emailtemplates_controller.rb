class EmailtemplatesController < ApplicationController
  def index
    @emailtemplates = Emailtemplate.all
  end
  
  def new
    @emailtemplate = Emailtemplate.new
  end
  
  def create
   @emailtemplate = Emailtemplate.new(params.require(:emailtemplate).permit(:key, :subject,:body) )
  
   if(@emailtemplate.save)
     UserMailer.welcome_email(@emailtemplate).deliver_now
     redirect_to emailtemplates_path(@emailtemplate)  
   else
     render 'new'
   end
   
  
  end
  
  def show
    @emailtemplate = Emailtemplate.find(params[:format])
  end
  
  def destroy
  end
  
end
