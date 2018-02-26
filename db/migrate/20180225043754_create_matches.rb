class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.string :platformId
      t.string :gameId
      t.integer :champion
      t.integer :queue
      t.integer :season
      t.string :timestamp
      t.string :role
      t.string :lane

      t.timestamps
    end
  end
end
