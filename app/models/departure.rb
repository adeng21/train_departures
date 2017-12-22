class Departure < ApplicationRecord
  belongs_to :origin_station, class_name: "Station", foreign_key: 'origin_station_id'
  belongs_to :destination_station, class_name: "Station", foreign_key: 'destination_station_id'

  enum status: {
    on_time: "On Time",
    now_boarding: "Now Boarding",
    all_aboard: "All Aboard",
    delayed: "Delayed",
    cancelled: "Cancelled",
    info_to_follow: "Info to Follow",
    tbd: "TBD",
    late: "Late",
    arriving: "Arriving",
    arrived: "Arrived",
    departed: "Departed",
    hold: "Hold",
    end: "End"
  }
end
