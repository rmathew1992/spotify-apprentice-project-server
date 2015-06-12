require 'rails_helper'

describe SongDecorator do
  describe '#popularity' do
    context 'when a song has over 3000 plays' do
      it 'renders as popular' do
        song = create :song,
                      plays: 3001
        decorated = SongDecorator.new(song)

        expect(decorated.popularity).to eq 'Dirty Diana has 3001 plays, it is popular'
      end
    end

  end

end
