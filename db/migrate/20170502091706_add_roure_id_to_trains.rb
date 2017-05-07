class AddRoureIdToTrains < ActiveRecord::Migration[5.0]
  def change
    remove_column :routes, :train_id
    add_belongs_to :trains, :route
  end
end
