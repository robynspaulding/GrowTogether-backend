class CustomEmailMailer < ApplicationMailer
  def send_email(recipient, subject, body)
    @body = body
    @recipient = recipient
    @subject = subject
    mail(to: recipient, subject: subject)
  end
end


