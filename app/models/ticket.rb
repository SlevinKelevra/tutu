class Ticket < ApplicationRecord
  belongs_to :passenger
  belongs_to :train
  belongs_to :first_station, class_name: 'RailwayStation'
  belongs_to :last_station, class_name: 'RailwayStation'
end
