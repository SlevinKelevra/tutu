class Train < ApplicationRecord
  belongs_to :route
  belongs_to :current_station, class_name: 'RailwayStation', foreign_key: :current_station_id
  has_many :tickets
  has_many :wagons, foreign_key: :number_id


  def calculate_wagons
    @data = {plac: 0, plac_up: 0, plac_down: 0, coupe: 0, coupe_up: 0, coupe_down: 0 }
    self.wagons.each do |wagon|
      if wagon.wagon_type == "Coupe"
        @data[:coupe] += 1
        @data[:coupe_up] += wagon.upper_berth
        @data[:coupe_down] += wagon.lower_berths
      elsif wagon.wagon_type == "Plac"
        @data[:plac] += 1
        @data[:plac_up] += wagon.upper_berth
        @data[:plac_down] += wagon.lower_berths
      end
    end
    @data
  end
end
