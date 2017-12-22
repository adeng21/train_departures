# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

stations = ["North Station", "South Station", "Wachusett", "Lowell", "Newburyport", "Haverhill", "Rockport", "Readville", "Stoughton", "Forge Park / 495", "Providence", "Needham Heights", "Worcester / Union Station", "Middleboro / Lakeville", "Greenbush"]
stations.each do |s|
  Station.find_or_create_by(name: s)
end

north_station = Station.find_by(name: "North Station")
south_station = Station.find_by(name: "South Station")

Departure.create(origin_station_id: north_station.id, trip_number: 411, destination_station_id: Station.find_by(name: "Wachusett").id, scheduled_time: Time.at(1513964700), lateness: 0, track_number: 7, status: "All Aboard")
Departure.create(origin_station_id: north_station.id, trip_number: 319, destination_station_id: Station.find_by(name: "Lowell").id, scheduled_time: Time.at(1513966500), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: north_station.id, trip_number: 163, destination_station_id: Station.find_by(name: "Newburyport").id, scheduled_time: Time.at(1513966800), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: north_station.id, trip_number: 209, destination_station_id: Station.find_by(name: "Haverhill").id, scheduled_time: Time.at(1513968240), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: north_station.id, trip_number: 111, destination_station_id: Station.find_by(name: "Rockport").id, scheduled_time: Time.at(1513968600), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: north_station.id, trip_number: 413, destination_station_id: Station.find_by(name: "Wachusett").id, scheduled_time: Time.at(1513968900), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: north_station.id, trip_number: 321, destination_station_id: Station.find_by(name: "Lowell").id, scheduled_time: Time.at(1513969920), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: south_station.id, trip_number: 765, destination_station_id: Station.find_by(name: "Readville").id, scheduled_time: Time.at(1513964700), lateness: 0, track_number: 10, status: "All Aboard")
Departure.create(origin_station_id: south_station.id, trip_number: 911, destination_station_id: Station.find_by(name: "Stoughton").id, scheduled_time: Time.at(1513966800), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: south_station.id, trip_number: 711, destination_station_id: Station.find_by(name: "Forge Park / 495").id, scheduled_time: Time.at(1513967700), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: south_station.id, trip_number: 813, destination_station_id: Station.find_by(name: "Providence").id, scheduled_time: Time.at(1513968180), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: south_station.id, trip_number: 767, destination_station_id: Station.find_by(name: "Readville").id, scheduled_time: Time.at(1513968300), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: south_station.id, trip_number: 611, destination_station_id: Station.find_by(name: "Needham Heights").id, scheduled_time: Time.at(1513968720), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: south_station.id, trip_number: 515, destination_station_id: Station.find_by(name: "Worcester / Union Station").id, scheduled_time: Time.at(1513969200), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: south_station.id, trip_number: 15, destination_station_id: Station.find_by(name: "Middleboro / Lakeville").id, scheduled_time: Time.at(1513969800), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: south_station.id, trip_number: 79, destination_station_id: Station.find_by(name: "Greenbush").id, scheduled_time: Time.at(1513970820), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: south_station.id, trip_number: 815, destination_station_id: Station.find_by(name: "Providence").id, scheduled_time: Time.at(1513971000), lateness: 0, track_number: nil, status: "On Time")
Departure.create(origin_station_id: south_station.id, trip_number: 713, destination_station_id: Station.find_by(name: "Forge Park / 495").id, scheduled_time: Time.at(1513971600), lateness: 0, track_number: nil, status: "On Time")
