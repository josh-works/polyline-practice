class AddDeathYearAndBirthCityToActorAnthologies < ActiveRecord::Migration[7.0]
  def change
    add_column :actor_anthologies, :death_year, :integer
    add_column :actor_anthologies, :birth_city, :string
  end
end
