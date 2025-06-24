
class ContactMailer < ApplicationMailer
  default from: 'deepak@ssingularity.co.in'

  def send_contact_mail(contact)
    @contact = contact
    mail(
      from: @contact.email, 
      to: 'deepak@ssingularity.co.in', 
      subject: 'New Contact Us Submission'
    )
  end
end
