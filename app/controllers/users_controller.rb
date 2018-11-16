# frozen_string_literal: true

# rubocop:disable all
class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    if params[:id].to_i == current_user.id
      @user = current_user
      authorize @user
    else
      @user = User.find(params[:id])
      authorize @user
    end
  end

  def update
    raise
    @user = User.find(params[:id])
    authorize @user
    redirect_to user_path(current_user)
  end

  def destroy
    @user = current_user

    # not sure if this is necessary, but I think it makes sense
    authorize @user

    @user.destroy
    redirect_to home_root
  end
end
