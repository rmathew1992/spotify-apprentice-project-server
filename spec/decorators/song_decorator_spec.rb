require 'rails_helper'

describe SongDecorator do
  describe '#popularity' do
    context 'when a song has over 3000 plays' do
      it 'renders as popular' do
        song = create :song,
                      plays: 3001
        decorated = SongDecorator.new(song)

        expect(decorated.popularity).to eq '3001 plays, this song is popular'
      end
    end

  end

end
