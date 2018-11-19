class RatingsController < ApplicationController
  def create
    @store = Store.find(params[:store_id])
    @user = current_user
    @rating = Rating.new(rating_params)
    authorize @rating
    @rating.store = @store
    @rating.user = @user
    if @rating.save
      redirect_to store_path(@store)
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:score)
  end
end
