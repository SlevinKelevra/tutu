class RailwayStation < ApplicationRecord
  has_many :railway_stations_routes
  has_many :routes, through: :railway_stations_routes
  has_many :trains

  validates :title, presence: true

  scope :sort, -> { joins(:railway_stations_routes).order('railway_stations_routes.station_number') }

end
