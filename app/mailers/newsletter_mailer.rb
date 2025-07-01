class NewsletterMailer < ApplicationMailer
  default from: 'deepak@ssingularity.co.in'

  def send_newsletter(newsletter, subscriber_email)
    @newsletter = newsletter
    mail(
      to: subscriber_email,
      subject: "New Newsletter" # fallback subject
    )
  end

end