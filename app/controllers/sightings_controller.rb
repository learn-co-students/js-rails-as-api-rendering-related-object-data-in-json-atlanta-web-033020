class SightingsController < ApplicationController

  def show
    sighting = Sighting.find_by(id: params[:id])
    if sighting
      render json: sighting, include: [:bird, :location], except: [:created_at, :updated_at]
    else 
      render json: { message: "Couldn't Find Sighting..."}
    end
  end
end
