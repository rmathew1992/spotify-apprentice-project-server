class ArtistSerializer < ActiveModel::Serializer
  has_many :songs
  attributes :id, :name, :description, :spotify_uri
end
