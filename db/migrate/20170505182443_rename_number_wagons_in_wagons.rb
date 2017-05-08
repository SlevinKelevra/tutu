class RenameNumberWagonsInWagons < ActiveRecord::Migration[5.0]
  def change
    rename_column :wagons, :number_wagons, :number_wagon
  end
end
