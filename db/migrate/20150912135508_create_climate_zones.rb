class CreateClimateZones < ActiveRecord::Migration
  def change
    create_table :climate_zones do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
