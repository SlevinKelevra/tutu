class CreateWagons < ActiveRecord::Migration[5.0]
  def change
    create_table :wagons do |t|
      t.integer :number_id
      t.string :type
      t.integer :lower_berths
      t.integer :upper_berth

      t.timestamps
    end
  end
end
