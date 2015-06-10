class V1::SongsController < ApplicationController


  def index
    Song.create(name: 'Mia', artist: 'Jas', spotify_uri: 'test')
    songs = Song.all

    render json: songs
  end

  def show
    song = Song.find(params[:id])

    render json: song
  end

end
