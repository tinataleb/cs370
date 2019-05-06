class TuteeMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirm_email
    @tutee = params[:tutee]
    @url  = 'http://example.com/login'
    mail(to: @tutee.email, subject: 'NO_REPLY: Confirm Email CS370')
  end
end
