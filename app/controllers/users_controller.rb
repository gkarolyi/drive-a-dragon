class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @user = policy_scope(User).find(params[:id])
    @vehicles = Vehicle.where(user: @user)
    @bookings = Booking.where(user: @user)
  end
end
