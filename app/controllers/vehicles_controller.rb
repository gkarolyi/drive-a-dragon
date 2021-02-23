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
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    @vehicle.save ? (redirect_to vehicle_path(@vehicle)) : (render :new)
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:name, :description, :location, :price)
  end
end
