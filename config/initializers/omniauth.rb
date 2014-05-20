OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '34009220ee29ef82bcad', '4a7ef25996faf19995f25c2aee53a881bc726cfd'
  provider :facebook, '312956235537377', 'da2ec44642377764385d4c95043090ba'
end

