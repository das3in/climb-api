class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.references :category, foreign_key: true
      t.string :item
      t.string :interval
      t.float :value
      t.float :goal

      t.timestamps
    end
  end
end
