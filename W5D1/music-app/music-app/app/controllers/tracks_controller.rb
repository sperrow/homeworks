class TracksController < ApplicationController
  before_action :require_logged_in

  def new
    @track = Track.new(album_id: params[:album_id])
    render :new
  end

  def create
    track = Track.new(track_params)
    if track.save
      redirect_to track_url(track)
    else
      flash.now[:errors] = track.errors.full_messages
      render :new
    end
  end

  def show
    @track = Track.find(params[:id])
    render :show
  end

  def edit
    @track = Track.find(params[:id])
    render :edit
  end

  def update
    track = Track.find(params[:id])
    if track.update_attributes(track_params)
      redirect_to track_url(track)
    else
      flash.now[:errors] = track.errors.full_messages
      render :edit
    end
  end

  def destroy

  end

  private
  def track_params
    params.require(:track).permit(:title, :album_id, :ord, :bonus, :lyrics)
  end
end
