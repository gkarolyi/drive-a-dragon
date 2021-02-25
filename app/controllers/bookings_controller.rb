class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.vehicle = Vehicle.find(params[:vehicle_id])
    @booking.user = current_user
    authorize @booking
    @booking.save ? (redirect_to user_path(current_user)) : (redirect_to vehicle_path(@booking.vehicle))
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.update(booking_params)
    @booking.save ? (redirect_to user_path(current_user)) : (render 'users/show')
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :vehicle_id, :status)
  end
end
