class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :spotify_uri
end
