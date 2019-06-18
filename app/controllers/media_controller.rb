class MediaController < ApplicationController
  def index
    @media = Medium.all
  end

  def show
    @medium = Medium.find(show_params[:id])
  end

  private

  def show_params
    params.require(:medium).permit(:id)
  end
end
