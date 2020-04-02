class RenameColumnGeoMarksShare < ActiveRecord::Migration[6.0]
  def change
     rename_column :geo_marks_shares, :sharer_id, :user_id
  end
end
