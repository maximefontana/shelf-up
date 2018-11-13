class ChangeUsersColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :owner, :boolean
    add_column :users, :owner, :boolean
  end
end
