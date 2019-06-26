class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def require_user
    redirect_to '/login' unless current_user
  end

  def require_no_user
    redirect_to '/' if current_user
  end

  def redirect_to_dashboard_if_logged_in
    redirect_to '/dashboard' if current_user
  end

end
