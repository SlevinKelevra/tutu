class DeleteNumberInRailwayStation < ActiveRecord::Migration[5.0]
  def change
    remove_column :railway_stations, :number, :integer
  end
end
