class SongController < ApplicationController
  
  def index
    
  end

  def new
    @song = Song.new
  end
  
  def create
    @song = Song.new(song_params)
    if @song.save
      flash[success] = "SongLib Created!"
      redirect_to @song
    else
      render 'song', status: :unprocessable_entity
    end
  end

  private

  def song_params
    params.require(:song).permit()
  end

end
