require 'rails_helper'

describe SongDecorator do
  describe '#popularity' do
    context 'when a song has over 3000 plays' do
      it 'renders as popular' do
        song = create :popular_song
        decorated = SongDecorator.new(song)

        expect(decorated.message).to eq 'Dirty Diana has 3001 plays, it is popular.'
      end
    end

    context 'when a song has 3000 or less plays' do
      it 'renders as unpopular' do
          song = create :unpopular_song
          decorated = SongDecorator.new(song)

          expect(decorated.message).to eq 'Dirty Diana has 1 play, it is unpopular.'
      end
    end
  end
end
