class RenameSortWagonInTrain < ActiveRecord::Migration[5.0]
  def change
    rename_column :trains, :sort_wagons, :sort_from_head
  end
end
