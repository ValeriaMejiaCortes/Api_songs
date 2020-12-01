class SongsController < ApplicationController
  def show
    @artist = params[:artist]
    @title = params[:title]
    @song = Song.new(@artist, @title)

    response = @song.lyrics
    render json: response
  end
end
