class Song < ActiveRecord::Base
  validates :name, presence: true
  validates :spotify_uri, presence: true, uniqueness: true
  validates :artist_id, presence: true
end
