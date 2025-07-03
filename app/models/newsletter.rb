class Newsletter < ApplicationRecord
  has_one_attached :file

  after_commit :send_newsletter_to_all_subscribers, on: :create

  private

  def send_newsletter_to_all_subscribers
    return unless file.attached? # safety check

    Subscribe.find_each do |subscriber|
      NewsletterMailer.send_newsletter(self, subscriber.email).deliver_now
    end
  end
end