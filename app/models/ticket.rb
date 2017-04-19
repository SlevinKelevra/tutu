class Ticket < ApplicationRecord
  belongs_to :passenger
  has_many :train
  belongs_to :route
end
