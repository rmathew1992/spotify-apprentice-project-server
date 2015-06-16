require 'rails_helper'

describe 'mixtape endpoints' do
  describe 'POST #create' do
    it 'returns JSON for a single mixtape' do
      artist = create(:artist)
      songs = create_list(:song, 5, artist: artist)

      post(mixtapes_url, { number_of_songs: 4, artist_ids: artist[:id] }.to_json, accept_headers)
      expect(response).to have_http_status :ok
      expect(response).to match_response_schema :mixtape
    end
  end
end
