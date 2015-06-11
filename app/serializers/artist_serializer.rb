class ArtistSerializer < ActiveModel::Serializer
  has_many :songs, embed: :id
  attributes :id, :name, :description, :spotify_uri
end
