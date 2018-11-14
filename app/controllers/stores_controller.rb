# frozen_string_literal: true

# rubocop:disable all
class StoresController < ApplicationController
  before_action :find_store, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show], raise: false

  def index
    @stores = policy_scope(Store)
    if current_user
      @user = current_user
      # authorize @user
    end
  end

  def show
    authorize @store
    if current_user
      @user = current_user
      authorize @user
    end
  end

  def new
    authorize @store
    @user = current_user
    @store = Store.new
  end

  def create
    authorize @store
    @user = current_user
    @store = Store.new(store_params)
    if @store.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @store.update(store_params)
    authorize @store
    if @store.save
      redirect_to store_path(@store)
    else
      render :edit
    end
  end

  private

  def store_params
    params.require(:store).permit(:user_id, :name, :location,
     :description, :address, :rent_time, :commission_amount, :rent_price_min, :rent_price_max)
  end

  def find_store
    @store = Store.find(params[:id])
  end
end
