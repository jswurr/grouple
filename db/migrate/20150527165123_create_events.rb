class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :when
      t.integer :creator_id
      t.text :description

      t.timestamps null: false
    end
  end
end
