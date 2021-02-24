class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :vehicles]

  def home
    @vehicles = Vehicle.all
  end
end
