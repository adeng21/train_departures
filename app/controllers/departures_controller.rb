class DeparturesController < ApplicationController
  def index
    @current_time = Time.zone.at(1513964644)
    @departures_by_origin = Departure.includes(:origin_station, :destination_station).group_by { |d| d.origin_station.name }
  end
end
