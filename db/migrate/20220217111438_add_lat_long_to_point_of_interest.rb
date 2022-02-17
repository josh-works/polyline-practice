class AddLatLongToPointOfInterest < ActiveRecord::Migration[7.0]
  def change
    add_column :point_of_interests, :lat, :float
    add_column :point_of_interests, :long, :float
  end
end
