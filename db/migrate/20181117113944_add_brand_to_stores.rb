class AddBrandToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :brand, :boolean, default: false
  end
end
