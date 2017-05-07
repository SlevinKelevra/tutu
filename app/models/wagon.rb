class Wagon < ApplicationRecord
  belongs_to :train

  validates :number_wagon, presence: true
  validates :number_wagon, uniqueness: { scope: :train_id }
  before_validation :set_number

  scope :ordered, -> { order(:number_wagon) }

  private

  def set_number
    max = train.wagons.maximum(:number_wagon)
    self.number_wagon = max ? max + 1 : 1
  end

end