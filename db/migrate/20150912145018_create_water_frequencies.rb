class CreateWaterFrequencies < ActiveRecord::Migration
  def change
    create_table :water_frequencies do |t|
      t.integer :value
      t.integer :frequency
      t.text :observation
      t.belongs_to :plant_type, index: true, foreign_key: true
      t.belongs_to :climate_zone, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
