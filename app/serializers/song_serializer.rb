class SongSerializer < ActiveModel::Serializer
  has_one :artist

  attributes :id, :name, :spotify_uri, :message
  embed :ids

  def message
    decorated_song.message
  end

  def decorated_song
    @decorated_song ||= object.decorate
  end
end
