class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    booking = Booking.create(booking_params)
    authorize booking
    store = Store.find(params[:store_id])
    user = current_user
    booking.store = store
    booking.user = user
    if booking.save
      redirect_to store_path(store)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :store_id, :price_per_unit, :quantity, :total_price, :name, :category)
  end
end
