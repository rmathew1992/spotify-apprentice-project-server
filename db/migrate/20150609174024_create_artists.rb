class CreateArtists < ActiveRecord::Migration
  def change
    enable_extension 'uuid-ossp'

    create_table :artists, id: :uuid do |t|
      t.timestamps null: false

      t.string :name
      t.text :description
      t.string :spotify_uri
    end

    add_index :artists, :spotify_uri, unique: true
  end
end
