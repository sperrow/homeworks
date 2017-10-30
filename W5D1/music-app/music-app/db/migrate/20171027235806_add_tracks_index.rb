class AddTracksIndex < ActiveRecord::Migration[5.1]
  def change
    add_index :tracks, :album_id
  end
end
