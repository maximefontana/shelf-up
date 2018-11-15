class AddDefaultValueToStorePrices < ActiveRecord::Migration[5.2]
  def change
    change_column :stores, :rent_price_min, :integer, default: 0
    change_column :stores, :rent_price_max, :integer, default: 500
    change_column :stores, :rent_time, :integer, default: 30
  end
end
