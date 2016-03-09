class EmailtemplatesController < ApplicationController
  
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
    @emailtemplate = Emailtemplate.find(params[:id])
  end
  
  
  def index
    @emailtemplates = Emailtemplate.all
  end
  
  def edit
    @emailtemplate = Emailtemplate.find(params[:id])
  end
  
  def update
    @emailtemplate = Emailtemplate.find(params[:id])
    @emailtemplate.key = params.require(:emailtemplate)[:key]
    @emailtemplate.subject = params.require(:emailtemplate)[:subject]
    @emailtemplate.body = params.require(:emailtemplate)[:body]
    if(@emailtemplate.save) 
       redirect_to @emailtemplate
       else
        render 'edit'      
    end
  end
  
  
  def destroy
    @emailtemplate = Emailtemplate.find(params[:id])
    if(@emailtemplate.destroy)
        redirect_to emailtemplates_path
        else
        render 'show'
    end
  end
  
end
