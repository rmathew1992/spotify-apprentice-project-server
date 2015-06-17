require 'rails_helper'

describe Song do
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :artist_id }
    it { should validate_presence_of :plays }
    it { should validate_uniqueness_of :spotify_uri }
  end

  describe 'GET /songs/:id' do
    it 'returns JSON for a single song' do
      song = create(:song, play_start:DateTime.new(2011,2,1))
      overlapping_song = build(:song,play_start:DateTime.new(2011, 1, 2))
      expect(overlapping_song.valid?).to be false
    end
  end
end
