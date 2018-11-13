class RemoveRentSpaceSizeFromStores < ActiveRecord::Migration[5.2]
  def change
    remove_column :stores, :rent_space_size, :integer
  end
end
