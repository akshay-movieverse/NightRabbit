class Api::VideosController < ApplicationController
  before_action :authenticate_user!

  def index
    @videos = Video.all
    render json: @videos
  end

  def show
    @video = Video.find(params[:id])
    render json: @video
  end
end
