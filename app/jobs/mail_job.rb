class MailJob < ActiveJob::Base
  queue_as :default
  
  MailJob.set(wait: 1.second).perform_later()

  def perform()
  emailtemplate = Emailtemplate.new
  emailtemplate.key = "frezzymounir@gmail.com"
  emailtemplate.subject = "freddy"
  emailtemplate.body = "body"
   UserMailer.welcome_email(emailtemplate).deliver_now
  end
end
