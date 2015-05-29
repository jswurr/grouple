class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.integer :event_id
      t.integer :creator_id
      t.string :name

      t.timestamps null: false
    end
  end
end
