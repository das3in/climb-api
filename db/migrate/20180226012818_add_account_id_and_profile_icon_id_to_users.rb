class AddAccountIdAndProfileIconIdToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :account_id, :integer
    add_column :users, :profile_icon_id, :integer
  end
end
