class RemovePassengerInTickets < ActiveRecord::Migration[5.0]
  def change
    remove_column :tickets, :passenger
  end
end
