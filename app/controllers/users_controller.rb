class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @user = policy_scope(User).find(params[:id])
    @vehicles = Vehicle.where(user: @user)
    # bookings made by the user ofother vehicles
    @bookings = Booking.where(user: @user)
    # bookings of the users vehicels
    @vehicle_bookings = Booking.joins(:vehicle).where('vehicles.user_id = ?', @user.id)
  end
end
