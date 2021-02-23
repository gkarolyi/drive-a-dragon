class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    @booking.save ? (redirect_to user_path(current_user)) : (render 'vehicles/show')
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :vehicle_id)
  end
end
