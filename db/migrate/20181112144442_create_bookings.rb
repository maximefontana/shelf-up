class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :store, foreign_key: true
      t.integer :price_per_unit
      t.integer :quantity
      t.integer :total_price
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
