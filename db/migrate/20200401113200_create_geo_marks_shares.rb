class CreateGeoMarksShares < ActiveRecord::Migration[6.0]
  def change
    create_table :geo_marks_shares do |t|
      t.references :geo_mark
      t.references :sharer, references: :user
      t.timestamps
    end
  end
end
