class CreateActorAnthologies < ActiveRecord::Migration[7.0]
  def change
    create_table :actor_anthologies do |t|
      t.string :name
      t.string :picture_url

      t.timestamps
    end
  end
end
