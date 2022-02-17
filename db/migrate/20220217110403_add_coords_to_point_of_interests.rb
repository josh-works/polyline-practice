class AddCoordsToPointOfInterests < ActiveRecord::Migration[7.0]
  def change
    add_column :point_of_interests, :coords, :string
  end
end
