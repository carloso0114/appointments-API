class CarsController < ApplicationController
  def index
    @cars = Car.all
    render json: { cars: @cars }
  end

  def create
    @car = Car.new(car_params)
    @car.attach_image

    if @car.save
      render json: { message: 'Car successfully created' }, status: 201
    else
      render json: { message: 'Unable to create car' }, status: 400
    end
  end

  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      render json: { message: 'Car successfully deleted' }, status: 200
    else
      render json: { message: 'Unable to delete car' }, status: 400
    end
  end

  private

  def car_params
    params.require(:car).permit(:name, :model, :description, :image)
  end
end
