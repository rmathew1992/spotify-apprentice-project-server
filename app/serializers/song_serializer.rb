class SongSerializer < ActiveModel::Serializer
  has_one :artist, embed: :objects

  attributes :id, :name, :spotify_uri
end
