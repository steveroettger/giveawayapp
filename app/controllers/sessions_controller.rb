class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to contestants_new_path, notice: 'You are signed in!'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end