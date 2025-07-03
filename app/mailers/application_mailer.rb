class ApplicationMailer < ActionMailer::Base
  default from: "deepak@ssingularity.co.in"
  layout "mailer"

  include Rails.application.routes.url_helpers
  default_url_options[:host] = Rails.env.production? ? 'nizarrohana.com' : 'localhost:3000'
end