class AddTiketsInPassenger < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :tickets, :passenger
  end
end
