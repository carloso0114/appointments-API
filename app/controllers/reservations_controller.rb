class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
    render json: { reservations: @reservations }
  end

  def create
    @reservations = Reservation.new(reservations_params)

    if @reservations.save
      render json: { message: 'reservation successfully created' }, status: 201
    else
      render json: { message: 'Unable to create reservation' }, status: 400
    end
  end

  def destroy
    @reservations = Reservation.find(params[:id])
    @reservations.destroy
    render json: { message: 'reservation successfully deleted' }, status: 200
  end

  private

  def reservations_params
    params.require(:reservation).permit(:date, :user_id, :car_id)
  end
end
