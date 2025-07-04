
class ContactMailer < ApplicationMailer
  default from: 'deepak@ssingularity.co.in'

  def send_contact_mail(contact)
    @contact = contact
    mail(
      to: 'info@nizarrohana.com',
      subject: 'New Contact Us Submission',
      reply_to: @contact.email
    )
  end
end
