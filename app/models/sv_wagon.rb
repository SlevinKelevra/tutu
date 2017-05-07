class SvWagon < Wagon
  validates :lower_berths, presence: true

  def places
    places = {}
    places['Lower Berths'] = lower_berths
    places
  end

end
