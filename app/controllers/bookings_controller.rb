# frozen_string_literal: true

# rubocop:disable all
class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def show
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

    # set price_per_unit and quantity as integers
    params[:booking][:price_per_unit] =
      ((params[:booking][:price_per_unit].to_f)*100).to_i
    params[:booking][:quantity] = params[:booking][:quantity].to_i

    # set booking_fee to 15% of subtotal
    params[:booking][:booking_fee] =
      ((params[:booking][:price_per_unit] * params[:booking][:quantity]) * 0.15).to_i

    # set total_price to subtotal plus booking_fee
    params[:booking][:total_price] =
      (params[:booking][:booking_fee]) +
      (params[:booking][:price_per_unit] * params[:booking][:quantity])

    booking.booking_fee = params[:booking][:booking_fee]
    booking.total_price = params[:booking][:total_price]
    if booking.save
      # raise
      redirect_to user_path(current_user) + "#bookings"
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @booking
    @booking.update(booking_params)
    if @booking.save
      redirect_to user_path(current_user) + "#bookings"
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    authorize @booking
    redirect_to user_path(current_user)
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:price_per_unit, :quantity, :total_price,
      :booking_fee, :name, :category, :photo, :status, :start_date, :end_date,
      :comment)
  end
end
