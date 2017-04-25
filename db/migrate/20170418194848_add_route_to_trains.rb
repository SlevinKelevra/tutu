class AddRouteToTrains < ActiveRecord::Migration[5.0]
  def change
    add_belongs_to :routes, :train
  end
end
