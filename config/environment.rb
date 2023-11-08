
require_relative "application"


ActionMailer::Base.smtp_settings = {
  user_name: ENV['MAILJET_LOGIN'],
  password: ENV['MAILJET_PWD'],
  domain: 'https://mulhousevent-0b4c949ec7b1.herokuapp.com/',
  address: 'in-v3.mailjet.com',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
Rails.application.initialize!
