class Departure < ApplicationRecord
  DEFAULT_CARRIER = "MBTA".freeze

  belongs_to :origin_station, class_name: "Station", foreign_key: 'origin_station_id'
  belongs_to :destination_station, class_name: "Station", foreign_key: 'destination_station_id'

  scope :ordered_by_time, -> { order(scheduled_time: :asc) }

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

  def track_number_display
    track_number || "TBD"
  end

  def carrier
    DEFAULT_CARRIER
  end
end
