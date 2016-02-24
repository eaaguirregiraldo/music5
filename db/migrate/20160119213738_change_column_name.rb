class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :songs, :albums_id, :album_id
  	rename_column :albums, :artists_id, :artist_id
  end
end
