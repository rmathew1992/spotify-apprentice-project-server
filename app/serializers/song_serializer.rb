class SongSerializer < ActiveModel::Serializer
  has_one :artist, embed: :ids


  attributes :id, :name, :spotify_uri, :popularity
  embed :ids


  def popularity
    decorated_song.popularity
  end

  def decorated_song
    @decorated_song ||= object.decorate
  end
end


