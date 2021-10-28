class CarsController < ApplicationController
  before_action :create_car, only: [:create]
  def index
    @cars = Car.all
    render json: { cars: @cars }
  end

  def create
    if @car.save
      render json: { message: 'Car successfully created' }, status: 201
    else
      render json: { message: 'Unable to create car' }, status: 400
    end
  end
end

  private

def create_car
  @car = Car.new(car_params)
  @car.attach_image
end

def car_params
  params.require(:car).permit(:name, :model, :description, :image)
end
