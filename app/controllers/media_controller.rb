class MediaController < ApplicationController
  before_action :require_user, only: [:index, :show]

  def index
    @media = Medium.all
  end

  def show
    @medium = Medium.find(show_params[:id])
  end

  private

  def show_params
    params.permit(:id)
  end
end
