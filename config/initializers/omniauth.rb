if Rails.env.production?
  OmniAuth.config.full_host = "http://xplanner.heroku.com"
else                           
  OmniAuth.config.full_host = "http://localhost:3000"
end
#OmniAuth.config.full_host = "http://localhost:3000"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google, '1096749611269.apps.googleusercontent.com', '78C8VXtJfdbOohHlEFWOR6Uc', :scope => 'https://mail.google.com/mail/feed/atom/'
end
