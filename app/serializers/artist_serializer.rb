class ArtistSerializer < ActiveModel::Serializer
  has_many :songs, embed: :id, :include => true
  attributes :id, :name, :description, :spotify_uri
end
