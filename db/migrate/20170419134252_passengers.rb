class Passengers < ActiveRecord::Migration[5.0]
  def change
    create_table :passengers do |t|
      t.string :name
    end
  end
end
