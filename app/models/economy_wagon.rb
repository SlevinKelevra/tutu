class EconomyWagon < Wagon
  validates :side_top_seats, :side_bottom_seats, presence: true

  def places
    places = {}
    places['Upper Berth'] = upper_berth
    places['Lower Berths'] = lower_berths
    places['Side Top Seats'] = side_top_seats
    places['Side Bottom Seats'] = side_bottom_seats
    places
  end
end
