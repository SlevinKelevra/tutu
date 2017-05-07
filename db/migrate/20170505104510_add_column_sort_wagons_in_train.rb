class AddColumnSortWagonsInTrain < ActiveRecord::Migration[5.0]
  def change
    add_column :trains, :sort_wagons, :boolean, default: false
  end
end
