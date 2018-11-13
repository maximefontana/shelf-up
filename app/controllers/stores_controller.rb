# frozen_string_literal: true

# rubocop:disable all
class StoresController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show], raise: false

  def index
    @stores = policy_scope(Store)
    if current_user
      @user = current_user
      # authorize @user
    end
  end

  def show
    @store = Store.find(params[:id])
    authorize @store
    if current_user
      @user = current_user
      authorize @user
    end
  end

  def new
    @user = current_user
    @store = Store.new
    authorize @store
  end

  def create
    @user = current_user
    @store = Store.new(stores_params)
    authorize @store
    if @store.save
      redirect_to stores_path
    else
      render :new
    end
  end

  private

  def stores_params
    params.require(:store).permit(:user_id, :name, :location,
     :description, :address, :rent_time, :commission_amount, :rent_price_min, :rent_price_max)
  end
end
