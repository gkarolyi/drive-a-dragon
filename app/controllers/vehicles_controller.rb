class VehiclesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @vehicles = policy_scope(Vehicle).order(created_at: :desc)
  end

  def show
    @vehicle = policy_scope(Vehicle).find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
    authorize @vehicle
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    authorize @vehicle
    @vehicle.save ? (redirect_to user_path(current_user)) : (render :new)
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:name, :description, :location, :price, photos: [])
  end
end
