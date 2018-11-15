class AddRatingToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :rating, :integer
  end
end
