OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV["699ea9ec05de4e7b5d8c"], ENV["889d57305e3de486683f4cee3596d94fd92691c8"]
end

