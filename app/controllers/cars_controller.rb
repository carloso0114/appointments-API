class CarsController < ApplicationController
  before_action :create_car, only: [:create]
  def index
    @cars = Car.all
    render json: { cars: @cars }
  end

  def create
    image = Cloudinary::Uploader.upload(params[:image])
    @car = Car.new(car_params, image: image["url"])
    if @car.save
      render json: { message: 'Car successfully created' }, status: 201
    else
      render json: { message: 'Unable to create car' }, status: 400
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :model, :description, :image)
  end  
end

