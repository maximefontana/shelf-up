class AddCategoryToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :category, :string
  end
end
