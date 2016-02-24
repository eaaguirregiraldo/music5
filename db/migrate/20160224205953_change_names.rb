class ChangeNames < ActiveRecord::Migration
  def change
  	rename_column :albums, :artists_id, :artist_id
  end
end
