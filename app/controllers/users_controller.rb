# frozen_string_literal: true

# rubocop:disable all
class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
  end

  def update
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
