class MixtapeMaker

  def self.generate(number_of_songs = 5, artist_ids:)
    new.generate(number_of_songs, artist_ids: artist_ids)
  end

  def generate(number_of_songs = 5, artist_ids:)
    if artist_ids.blank?
      Song.limit(number_of_songs).order('RANDOM()')
    else
      Song.where(artist: artist_ids).order('RANDOM()').limit(number_of_songs)
    end
  end

end
