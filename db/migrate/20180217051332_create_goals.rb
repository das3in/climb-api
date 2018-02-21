class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.references :category, foreign_key: true
      t.string :item
      t.string :interval
      t.float :value, default: 0.0
      t.float :goal, default: 0.0

      t.timestamps
    end
  end
end
