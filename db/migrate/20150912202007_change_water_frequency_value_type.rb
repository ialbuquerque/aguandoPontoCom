class ChangeWaterFrequencyValueType < ActiveRecord::Migration
  def change
    change_column :water_frequencies, :value, :string
  end
end
