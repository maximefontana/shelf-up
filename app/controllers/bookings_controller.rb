class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    authorize @booking
    @user = current_user
    @store = Store.find(params[:store_id])
  end

  def create
    booking = Booking.create(booking_params)
    authorize booking
    store = Store.find(params[:store_id])
    booking.store = store
    booking.user = current_user
    if booking.save
      redirect_to store_path(store)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:price_per_unit, :quantity, :total_price, :name, :category, :photo)
  end
end
