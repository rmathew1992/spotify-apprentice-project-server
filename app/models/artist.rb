class Artist < ActiveRecord::Base
  validates :name, presence: true
  validates :spotify_uri, presence: true, uniqueness: true
  validates :songs, presence:true

  has_many :songs
end
