require 'rails_helper'

describe 'song endpoint' do
  describe 'GET /song' do
    it 'returns JSON for a single song' do
      song = create_list(:song, 1)

      get(song_url, {}, accept_headers)
      expect(response).to have_http_status :ok
      expect(response).to match_response_schema :song
    end
  end
end
