FactoryGirl.define do
  factory :song do
    name 'Dirty Diana'
    artist
    spotify_uri { SecureRandom.hex(10) }
    plays 3001
  end
end
