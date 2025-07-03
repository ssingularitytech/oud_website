class NewsletterMailer < ApplicationMailer
  default from: 'deepak@ssingularity.co.in'

  def send_newsletter(newsletter, subscriber_email)
    @newsletter = newsletter
    @subscriber_email = subscriber_email

    # Attach and embed file if present
    if @newsletter.file.attached? && @newsletter.file.blob&.present?
    attachment = @newsletter.file

    if attachment.image?
        attachments.inline[attachment.filename.to_s] = {
        mime_type: attachment.content_type,
        content: attachment.download
        }
    else
        attachments[attachment.filename.to_s] = {
        mime_type: attachment.content_type,
        content: attachment.download
        }
    end
    end

    mail(
      to: subscriber_email,
      subject: "New Newsletter"
    )
  end
end