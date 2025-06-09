
class ContactMailer < ApplicationMailer
  default from: "ssingularitydev@gmail.com"

  def send_contact_mail
    @contact = params[:contact]
    @admin_email = params[:email]
    mail(to: @admin_email, subject: "New Contact Message")
  end
end
