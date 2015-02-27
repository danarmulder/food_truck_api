class TrucksController < ApplicationController
  def index
    @trucks = Truck.all
    if params.has_key?(:q)
      @trucks = @trucks.where(:day=> params[:q])
    end
    render json: @trucks
  end
  def create
    truck = truck.new(truck_params)
    truck.save
    render json: truck
  end

  def destroy
    truck = Post.find(params[:id])
    truck.destroy

    render json: {status: "Deleted"}
  end

  private
  def truck_params
    params.require(:truck).permit(:name, :link, :description, :latitude, :longitude, :day, :starttime, :endtime, :verified)
  end
end
