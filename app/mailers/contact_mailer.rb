class ContactMailer < ActionMailer::Base
  def contact_us(params)
    @params = params
    mail(to: "acrosstheparkplay@gmail.com",
         from: @params[:email],
         subject: 'Contact Us Form Submission')
  end
end
