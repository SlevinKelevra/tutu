class Wagon < ApplicationRecord
  belongs_to :train, class_name: 'Train', foreign_key: :number_id

  validates :number_id, presence: true
  validates :number_id, uniqueness: { scope: :train_id }
  before_validation :set_number


  def set_number
    if train.wagons.maximum(:number_id).nil?
      self.number_id = 1
    else
      self.number_id = train.wagons.maximum(:number_id) + 1
    end
  end

end