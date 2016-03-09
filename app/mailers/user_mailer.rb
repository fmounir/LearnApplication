class UserMailer < ApplicationMailer
default from: "frezzymounir@gmail.com"

def welcome_email(emailtemplate)
    @emailtemplate = emailtemplate
    mail(to: emailtemplate.key , subject: emailtemplate.subject )
end

end
