class ChangeStores < ActiveRecord::Migration[5.2]
  def change
    rename_column :stores, :rent_rate, :commission_amount
  end
end
