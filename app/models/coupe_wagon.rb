class CoupeWagon < Wagon
  validates :lower_berths, :upper_berth, presence: true

  def places
    places = {}
    places['Upper Berth'] = upper_berth
    places['Lower Berths'] = lower_berths
    places
  end

end
