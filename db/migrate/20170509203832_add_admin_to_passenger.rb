class AddAdminToPassenger < ActiveRecord::Migration[5.0]
  def change
    add_column :passengers, :admin, :boolean, default: false
  end
end
