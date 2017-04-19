class Ticket < ApplicationRecord
  belongs_to :passenger
  has_one :train
  belongs_to :route
end
