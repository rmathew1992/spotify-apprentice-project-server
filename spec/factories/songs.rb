FactoryGirl.define do
  factory :song do
    name 'Dirty Diana'
    artist
    spotify_uri { SecureRandom.hex(10) }
    play_start { DateTime.current() }
    play_end { DateTime.current() }
    plays 3001

    trait :popular do
      plays 3001
    end

    trait :unpopular do
      plays 1
    end
    factory :popular_song, traits: [:popular]
    factory :unpopular_song, traits: [:unpopular]
  end
end
