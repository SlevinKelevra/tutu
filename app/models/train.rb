class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :wagons, foreign_key: :number_id

  def wagons_sort
    wagons.order(number_id: sort_wagons ? :desc : :asc)
  end

  def calculate_places(wagon_type, places)
    wagons.where(type: wagon_type).sum(places)
  end
end
