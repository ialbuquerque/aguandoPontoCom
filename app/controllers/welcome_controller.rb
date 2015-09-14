class WelcomeController < ApplicationController
    def index
      @plant_types = PlantType.all
      @climate_zones = ClimateZone.all

      @already_searched = false
      if params[:plant_type]
        @already_searched = true
      end

      @water_frequencies = WaterFrequency.where(
        climate_zone_id: params[:climate_zone],
        plant_type_id: params[:plant_type]
      )
    end
end
