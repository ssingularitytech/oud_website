class Newsletter < ApplicationRecord
  has_one_attached :file

  after_create :send_newsletter_to_all_subscribers

  private

  def send_newsletter_to_all_subscribers
    Subscribe.find_each do |subscriber|
      NewsletterMailer.send_newsletter(self, subscriber.email).deliver_now
    end
  end
end
