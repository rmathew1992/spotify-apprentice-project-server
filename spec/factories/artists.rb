FactoryGirl.define do
  factory :artist do
    name 'Michael Jackson'
    description 'The king of pop'
    spotify_uri { SecureRandom.hex(10) }
  end
end
