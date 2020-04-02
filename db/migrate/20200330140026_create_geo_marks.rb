class CreateGeoMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :geo_marks do |t|
      t.float :longtitude
      t.float :latitude
      t.references :user
      t.text :description
      t.boolean :public
      t.timestamps
    end
  end
end
