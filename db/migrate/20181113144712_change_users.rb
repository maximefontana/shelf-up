class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :owner, :boolean, default: false
  end
end
