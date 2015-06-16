require 'rails_helper'

describe MixtapeMaker do
  describe '.generate' do
    it 'makes a correctly formatted mixtape' do
      artists = create_list(:artist, 3)
      songs = create_list(:song, 4, artist: artists.first)
      mixtape = MixtapeMaker.generate(2, artist_ids: artists.map(&:id))
      expect(mixtape.count).to eq 2
    end

    it 'makes an empty mixtape' do
      artist = create(:artist)

      mixtape = MixtapeMaker.generate(0, artist_ids: artist.id)
      expect(mixtape).to be_empty
    end

    it 'makes a mixtape without an artist' do
      songs = create_list(:song, 6)

      mixtape = MixtapeMaker.generate(artist_ids: nil)
      expect(mixtape.count).to eq 2
    end
  end
end
