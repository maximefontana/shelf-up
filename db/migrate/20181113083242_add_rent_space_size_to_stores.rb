class AddRentSpaceSizeToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :rent_space_size, :integer
  end
end
