class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :number
      t.integer :first_station_id
      t.integer :last_station_id
    end
  end
end
