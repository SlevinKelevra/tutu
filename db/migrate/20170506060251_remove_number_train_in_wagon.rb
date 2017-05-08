class RemoveNumberTrainInWagon < ActiveRecord::Migration[5.0]
  def change
    remove_column :wagons, :number_train, :integer
  end
end
