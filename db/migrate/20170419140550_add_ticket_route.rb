class AddTicketRoute < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :trains, :ticket
  end
end
