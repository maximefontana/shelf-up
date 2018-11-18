class RatingsController < ApplicationController
  def create
    @store = Store.find(params[:store_id])
    @user = current_user
    @rating = Rating.new(rating_params)
    authorize @rating
    @rating.store = @store
    @rating.user = @user
    if @rating.save
      respond_to do |format|
        format.html { redirect_to store_path(@store) }
        format.js  # <-- will render `app/views/ratings/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'store/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:score)
  end
end
