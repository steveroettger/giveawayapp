class ApplicationController < ActionController::Base
  protect_from_forgery
 
  before_filter :ie_headers
    def ie_headers
      response.headers['P3P'] = "CP=\"CAO PSA OUR\""
    end
    
  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
