require 'sendgrid-ruby'

class SendgridDelivery
  include SendGrid

  def initialize(settings); end

  def deliver!(mail)
    from = SendGrid::Email.new(email: mail.from.first)
    to = SendGrid::Email.new(email: mail.to.first)
    subject = mail.subject

    # Strip any CRLF and semicolons from content type
    content_type = if mail.html_part
                    'text/html'
                  elsif mail.content_type&.include?('html')
                    'text/html'
                  else
                    'text/plain'
                  end

    content = SendGrid::Content.new(
      type: content_type,
      value: extract_body(mail)
    )

    mail_obj = SendGrid::Mail.new(from, subject, to, content)
    
    sg = SendGrid::API.new(api_key: Rails.application.credentials.dig(:sendgrid, :api_key))
    response = sg.client.mail._('send').post(request_body: mail_obj.to_json)
    
    unless response.status_code.to_s.start_with?('2')
      Rails.logger.error "SendGrid API error: #{response.status_code} - #{response.body}"
      raise "SendGrid API error: #{response.status_code} - #{response.body}"
    end

    Rails.logger.info "Email sent successfully via SendGrid API"
  end

  private

  def extract_body(mail)
    if mail.html_part
      mail.html_part.body.raw_source
    elsif mail.content_type&.include?('html')
      mail.body.raw_source
    else
      mail.body.raw_source
    end
  end
end
