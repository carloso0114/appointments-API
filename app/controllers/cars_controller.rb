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

  def destroy
    @car = Car.find(params[:id])
    if @car.destroy
      render json: { message: 'Car successfully deleted' }, status: 201
    else
      render json: { message: 'Unable to delete car' }, status: 400
    end
  end
end

  private

def create_car
  image = Cloudinary::Uploader.upload(params[:image])
  @car = Car.create(image: image['url'], name: params[:name], model: params[:model],
                    description: params[:description])
end
