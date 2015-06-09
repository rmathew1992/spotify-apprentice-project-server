class Artist < ActiveRecord::Base
  validates :name, presence: true
  validates :spotify_uri, presence: true, uniqueness: true
end
