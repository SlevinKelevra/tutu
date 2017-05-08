class AlterTableWagons < ActiveRecord::Migration[5.0]
  def change
    add_column :wagons, :side_top_seats, :integer
    add_column :wagons, :side_bottom_seats, :integer
    add_column :wagons, :seat_places, :integer
    add_column :wagons, :type, :string
  end
end
