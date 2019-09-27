class AddIndexToAccountId < ActiveRecord::Migration[5.1]
  def change
    add_index :users, :account_id
    add_index :matches, :gameId
  end
end
