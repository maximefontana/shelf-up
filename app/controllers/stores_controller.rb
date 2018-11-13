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

  # need create and new
end
