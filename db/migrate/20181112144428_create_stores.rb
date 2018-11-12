class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :location
      t.text :description
      t.string :address
      t.integer :rent_rate
      t.integer :rent_time
      t.integer :rent_price_min
      t.integer :rent_price_max
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
