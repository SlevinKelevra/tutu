class Route < ApplicationRecord
  validates :name, presence: true
  has_and_belongs_to_many :railway_stations
  has_many :trains
  has_many :tickets
end
