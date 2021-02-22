class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @user = current_user
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.save ? (redirect_to user_vehicles_path(current_user)) : (render :new)
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:name, :description, :location, :price, :user)
  end
end
