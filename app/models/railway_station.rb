class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains

  validates :title, presence: true

  scope :ordered, -> { joins(:railway_stations_routes).order('railway_stations_routes.position').uniq }

  def update_position(route, position)
    station_route = station_route(route)
    station_route.update(position: position) if station_route
  end

  def position_in(route)
    station_route(route).try(:position)
  end

  def update_times(route, arrive_time, departure_time)
    station_route = station_route(route)
    station_route.update(arrive_time: arrive_time, departure_time: departure_time) if station_route
  end

  def arrive_time_in(route)
    station_route(route).try(:arrive_time)
  end

  def departure_time_in(route)
    station_route(route).try(:departure_time)
  end


  protected

  def station_route(route)
    @station_route ||= railway_stations_routes.where(route: route).first
  end

  end
