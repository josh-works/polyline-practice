class AddBirthYearToActorAnthology < ActiveRecord::Migration[7.0]
  def change
    add_column :actor_anthologies, :birth_year, :integer, null: false
  end
end
