class PagesController < ApplicationController
  before_action :require_user, only: [:dashboard]
  before_action :redirect_to_dashboard_if_logged_in, only: [:home]

  def dashboard
  end

  def home
  end
end
