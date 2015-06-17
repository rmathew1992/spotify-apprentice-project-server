class AddDateTimeColumn < ActiveRecord::Migration
  def change
    add_column :songs, :play_start, :datetime
    add_column :songs, :play_end, :datetime
  end
end
