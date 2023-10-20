  class EmailsController < ApplicationController
    def send_email
      
      recipient = params[:recipient]
      subject = params[:subject]
      body = params[:body]
      # Implement email sending logic here (e.g., using Action Mailer)
      if CustomEmailMailer.send_email(recipient, subject, body).deliver_now

        render json: { message: 'Email sent successfully' }
      else
        render json: { error: 'Email sending failed' }, status: :bad_request
      end
    end
  end

