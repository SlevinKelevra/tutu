class Wagon < ApplicationRecord
  belongs_to :train, class_name: 'Train', foreign_key: :number_train

  validates :number_wagon, presence: true
  validates :number_wagon, uniqueness: { scope: :train_id }
  before_validation :set_number

  scope :sort_number, -> { order(:number_wagon) }

  private

  def set_number
    if train.wagons.maximum(:number_wagon).nil?
      self.number_wagon = 1
    else
      self.number_wagon = train.wagons.maximum(:number_wagon) + 1
    end
  end

end