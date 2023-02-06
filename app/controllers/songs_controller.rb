class SongsController < ApplicationController
  
  def index

  end

  def show
    head :ok
  end

  def new
    @song = Songlib.new
  end
  
  def create
    # @song = Songlib.new(song_params)
    # if @song.save
    #   flash[success] = "Songlib Created!"
    #   redirect_to @song
    # else
    #   render 'song', status: :unprocessable_entity
    # end
    redirect_to songs_path
  end

  private

  def song_params
    # params.require(:song).permit(:noun1, :noun2, :noun3, :noun4, :noun5, :verb6, :verb7, :noun8, :noun9)
    params.permit!
  end

end
