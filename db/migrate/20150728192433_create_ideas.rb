class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :creator
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
