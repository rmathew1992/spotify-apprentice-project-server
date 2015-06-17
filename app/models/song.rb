class Song < ActiveRecord::Base
  belongs_to :artist

  validates :name, presence: true
  validates :spotify_uri, presence: true, uniqueness: true
  validates :artist_id, presence: true
  validates :plays, presence: true
  validates 'created_at', 'updated_at', overlap: {}

  counter_culture :artist, touch: :true
end
