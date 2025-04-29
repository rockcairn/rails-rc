class CreatePeaks < ActiveRecord::Migration[8.0]
  def change
    create_table :peaks do |t|
      t.string :name
      t.integer :height
      t.string :range
      t.string :domain
      t.string :relative_path
      t.string :description
      t.string :keywords
      t.date :report_date
      t.string :difficulty
      t.string :roundtrip_miles
      t.integer :elevation_gain
      t.string :roundtrip_duration
      t.boolean :solo
      t.boolean :combo
      t.integer :marker_id

      t.timestamps
    end
  end
end
