class Wagon < ApplicationRecord
  belongs_to :train, class_name: 'Train', foreign_key: :number_id

end