class MixtapeMaker

  def self.generate(number_of_songs = 5, artists:)
    new.generate(number_of_songs, artists: artists)
  end

  def generate(number_of_songs = 5, artists:)
    if artists.blank?
      Song.limit(number_of_songs).order('RANDOM()')
    else
      Song.where(artist: artists[:id]).order('RANDOM()').limit(number_of_songs)
    end
  end

end
