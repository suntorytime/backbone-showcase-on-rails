class ShowsController < ApplicationController

# these are methods that render the JSON and configure error cases

  before_action :set_show, only: [:show, :update, :destroy]
  skip_before_filter  :verify_authenticity_toke

  def index
    @shows = Show.all
    render json: @shows
  end

  def show
    render json: @show
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      render json: @show, status: :created, location: @show
    else
      err
    end
  end

  def update
    if @show.update(show_params)
      head :no_content
    else
      err
    end
  end

  def destroy
    @show.destroy
    head :no_content
  end

  private

  def set_show
    @show = Show.find(params[:id])
  end

  def show_params
    params.permit(:title, :genre, :stars)
  end

  def err
    render json: @show.errors, status: :unprocessable_entity
  end
end
