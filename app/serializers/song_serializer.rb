class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :spotify_uri

  has_one :artist, embed: :id, :include => true
end
