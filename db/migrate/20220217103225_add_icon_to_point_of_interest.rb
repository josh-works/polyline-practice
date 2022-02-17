class AddIconToPointOfInterest < ActiveRecord::Migration[7.0]
  def change
    add_column :point_of_interests, :icon, :string
  end
end
