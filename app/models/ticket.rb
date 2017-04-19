class Ticket < ApplicationRecord
  belongs_to :passenger
  has_many :train
  belongs_to :train.route.first
  belongs_to :train.route.last
end
