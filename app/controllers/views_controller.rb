class ViewsController < ApplicationController
  def index
    @views = View.all
  end

  def new
    @view = View.new
  end

  def create
    @view = View.new(view_params)
    if @view.save
      redirect_to '/messages'
    else
      render 'new'
    end
  end


  private

  def view_params
    params.require(:view).permit(:medium_id).permit(:user_id)
  end

end
