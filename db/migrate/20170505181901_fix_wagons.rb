class FixWagons < ActiveRecord::Migration[5.0]
  def change
    rename_column :wagons, :number_id, :number_train
    add_column :wagons, :number_wagons, :integer
  end
end
