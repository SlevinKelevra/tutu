class AddTicketsPassenger < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :passengers, :ticket
  end
end
