class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :spotify_uri
end
