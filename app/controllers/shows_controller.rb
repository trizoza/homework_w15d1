class ShowsController < ApplicationController

  def index
    @shows = Show.all
    render json: @shows
  end

  def create
    @show = Show.create( params.require(:show).permit([:title, :series, :description, :image, :programmeID]) )
    render :json => @show
  end

end