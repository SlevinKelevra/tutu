class AddNumberInStation < ActiveRecord::Migration[5.0]
  def change
    add_column :railway_stations, :number, :integer
  end
end
