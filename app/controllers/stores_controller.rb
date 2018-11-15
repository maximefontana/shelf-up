# frozen_string_literal: true

# rubocop:disable all
class StoresController < ApplicationController
  before_action :find_store, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show], raise: false

  def index
    @names = Store.all.map { |store| store.name }
    if params[:query]
      @location = params[:query]
      @stores = Store.search_by_location(@location)
    elsif params_filter_present
      @location = params[:location] if params[:location].present?
      @category = params[:category] if params[:category].present?
      @name = params[:name] if params[:name].present?

      search_arguments = "#{@location}, #{@category}, #{@name}"

      @commission_min = params[:commission_min].present? ? params[:commission_min] : 0
      @commission_max = params[:commission_max].present? ? params[:commission_max] : 100

      @price_min = params[:price_min].present? ? params[:price_min] : 0
      @price_max = params[:price_max].present? ? params[:price_max] : 500

      @stores = Store.search(search_arguments).commission(@commission_min, @commission_max).price(@price_min, @price_max)
      
      # if @commission_min && @commission_max
      #   @stores = Store.search(search_arguments)
      #   .commission(@commission_min, @commission_max)
      # elsif @commission_min
      #   @stores = Store.search(search_arguments)
      #   .commission(@commission_min, 100)
      # elsif @commission_max
      #   @stores = Store.search(search_arguments)
      #   .commission(0, @commission_max)
      # end


      # if @price_min && @price_max
      # end

      # @stores = Store.search(@location, params[:commission_min])
    # if params[:query].present? && Store.where("location ILIKE ?", "%#{params[:query]}%")
    #   @stores = Store.search("location ILIKE ?", "%#{params[:query]}%")
    # elsif params_present
    #   @stores = Store.where("category ILIKE ?", "%#{params[:category]}").where("name ILIKE ?", "%#{params[:name]}")
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

def params_filter_present
  params[:category].present? || params[:name].present? ||
  params[:location].present? || params[:commission_min].present? ||
  params[:commission_max].present? || params[:price_min].present? ||
  params[:price_max].present?
end


end
