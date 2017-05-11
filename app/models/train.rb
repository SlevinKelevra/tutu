class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :wagons, foreign_key: :train_id

  validates :number, presence: true

  scope :station_in_route, ->(station) { joins(route: :railway_stations).where("railway_station_id = ?", station) }

  def sort_wagons_by_number
    wagons.order(number_wagon: sort_from_head ? :desc : :asc)
  end

  def calculate_places(wagon_type, places)
    wagons.where(type: wagon_type).sum(places)
  end
end
