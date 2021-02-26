class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :vehicles]

  def home
    @vehicles = {
      sci_fi: Vehicle.find_by(category: "sci-fi"),
      creature: Vehicle.find_by(category: "magic creature"),
      object: Vehicle.find_by(category: "magic object")
    }
  end
end
