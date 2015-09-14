class WaterFrequency < ActiveRecord::Base
  belongs_to :plant_type
  belongs_to :climate_zone

  validates :value, presence: true

  validates :frequency, presence: true, numericality: {
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 7
  }
  validates :plant_type, presence: true
  validates :climate_zone, presence: true
end
