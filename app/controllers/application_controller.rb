class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  protect_from_forgery prepend: true, with: :exception
  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end
