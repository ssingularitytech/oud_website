
class ContactMailer < ApplicationMailer
  default from: 'deepak@ssingularity.co.in'

  def send_contact_mail(contact)
    @contact = contact
    mail(
      to: 'sandeepsky708@gmail.com',
      subject: 'New Contact Us Submission',
      reply_to: @contact.email  # Add this to allow replies to the contact
    )
  end
end
