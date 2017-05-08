class SeatWagon < Wagon
  validates :seat_places, presence: true

  def places
    places = {}
    places['Seat Places'] = seat_places
    places
  end

end
