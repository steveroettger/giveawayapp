OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '461550273890419', 'add3ad768bdb7760b76721943f393814', 
  :iframe => true,
  :callback_url => "https://www.facebook.com/sroettgerdev/app_461550273890419/auth/facebook/callback"
end


