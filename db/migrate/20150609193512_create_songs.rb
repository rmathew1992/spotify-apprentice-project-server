class CreateSongs < ActiveRecord::Migration
  def change
  	enable_extension 'uuid-ossp'

    create_table :songs, id: :uuid do |t|
      t.string :name
      t.string :artist
      t.string :spotify_uri
      t.timestamps null: false
    end

    add_index :songs, :spotify_uri, unique: true
  end
end
