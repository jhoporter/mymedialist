class MediaController < ApplicationController
  before_action :require_user, only: [:index, :show]

  def index
    # Uncomment this when we learn paging.
    # @media = Medium.all
    @media = Medium.first(50)
  end

  def show
    @medium = Medium.find(show_params[:id])
  end

  private

  def show_params
    params.permit(:id)
  end
end
