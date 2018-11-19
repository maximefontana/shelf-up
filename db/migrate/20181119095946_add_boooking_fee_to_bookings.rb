class AddBoookingFeeToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booking_fee, :integer
  end
end
