class UsersController < ApplicationController
  def index
    @user = User.all
    render json: { users: @user }
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: { message: 'User successfully created' }, status: 201
    else
      render json: { message: 'Unable to create user' }, status: 400
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
