class UserMailer < ApplicationMailer
default from: "fmounir@pluseg.com"

def welcome_email(emailtemplate)
    @emailtemplate = emailtemplate
   
    mail(to: @emailtemplate.key , subject: @emailtemplate.subject )
end

end
