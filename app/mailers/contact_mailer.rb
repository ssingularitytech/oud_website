
class ContactMailer < ApplicationMailer
  default from: 'sandeep@ssingularity.co.in'

  def send_contact_mail(contact)
    @contact = contact
    mail(
      from: @contact.email, 
      to: 'sandeep@ssingularity.co.in', 
      subject: 'New Contact Us Submission'
    )
  end
end
