class MessagesController < ApplicationController
  def create
    @message = Message.create(message_params)
    @message.user = current_user
    authorize @message
    @booking = Booking.find(params[:booking_id])
    @message.booking = @booking
    if @message.save
      redirect_to user_path(current_user)
    end
  end

  def destroy
  end

  private

  def message_params
    params.require(:message).permit(:text)
  end
end
