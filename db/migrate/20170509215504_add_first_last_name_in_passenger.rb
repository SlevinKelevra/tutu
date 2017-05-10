class AddFirstLastNameInPassenger < ActiveRecord::Migration[5.0]
  def change
    add_column :passengers, :first_name, :string
    add_column :passengers, :last_name, :string
  end
end