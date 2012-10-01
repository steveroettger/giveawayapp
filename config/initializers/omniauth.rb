OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['461550273890419'], ENV['add3ad768bdb7760b76721943f393814']
end