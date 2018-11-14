# frozen_string_literal: true

# rubocop:disable all
class StoresController < ApplicationController
  before_action :find_store, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show], raise: false

  def index
    if params[:query].present?
      @stores = Store.where("location ILIKE ?", "%#{params[:query]}%")
    else
      @stores = policy_scope(Store)
    end
    if current_user
      @user = current_user
    end
  end

  def show
    authorize @store
    if current_user
      @user = current_user
      authorize @user
      @booking = Booking.new
    end
  end

  def new
    @store = Store.new
    authorize @store
    @user = current_user
  end

  def create
    @store = Store.create(store_params)
    authorize @store
    @user = current_user
    @store.user = current_user
    if @store.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def edit
  end

  def update
    authorize @store
    @store.update(store_params)
    if @store.save
      redirect_to store_path(@store)
    else
      render :edit
    end
  end

  def destroy
    authorize @store
    @store.destroy
    redirect_to user_path(current_user)
  end

  private

  def store_params
    params.require(:store).permit(:user_id, :name, :location, :description,
      :address, :rent_time, :commission_amount, :rent_price_min,
     :rent_price_max, :photo, :photo_cache, :category)
  end

  def find_store
    @store = Store.find(params[:id])
  end
end
