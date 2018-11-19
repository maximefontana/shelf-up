# frozen_string_literal: true

# rubocop:disable all
class StoresController < ApplicationController
  before_action :find_store, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show], raise: false

  def index
    if current_user && current_user.owner
      @user = current_user
      @stores = search_stores.brand
    elsif current_user
      @user = current_user
      @stores = search_stores.shop
    else
      @stores = policy_scope(Store)
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
    if !@user.owner
      @store.brand = true
    end
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
    @store.destroy
    authorize @store
    redirect_to user_path(current_user)
  end

  private

  def store_params
    params.require(:store).permit(:user_id, :name, :location, :description,
      :address, :rent_time, :commission_amount, :rent_price_min,
      :rent_price_max, :photo, :photo_cache, :category, :brand)
  end

  def find_store
    @store = Store.find(params[:id])
  end
  
  def search_stores
    if params[:query]
      @location = params[:query]
      if params[:query].empty? # show all if user doesn't put a location
        @stores = policy_scope(Store)
      else
        @stores = Store.search(@location)
      end
    elsif params_filter_present
      filter_results
    else
      @stores = policy_scope(Store)
    end
    @stores
  end

  def params_filter_present
    params[:category].present? || params[:name].present? ||
    params[:location].present? || params[:commission_min].present? ||
    params[:commission_max].present? || params[:price_min].present? ||
    params[:price_max].present?
  end

  def filter_results
    @location = params[:location] if params[:location].present?
    @category = params[:category] if params[:category].present?
    @name = params[:name] if params[:name].present?

    search_arguments = "#{@location}, #{@category}, #{@name}"

    @commission_min = params[:commission_min].present? ? params[:commission_min] : 0
    @commission_max = params[:commission_max].present? ? params[:commission_max] : 100

    @price_min = params[:price_min].present? ? params[:price_min] : 0
    @price_max = params[:price_max].present? ? params[:price_max] : 500

    @time_min = params[:time_min].present? ? params[:time_min] : 0
    @time_max = params[:time_max].present? ? params[:time_max] : 365

    @stores = Store.search(search_arguments)
    .commission(@commission_min, @commission_max)
    .price(@price_min, @price_max)
    .time(@time_min, @time_max)
  end
end
