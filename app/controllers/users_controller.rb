class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    render json: @user, status: 200
  end
end
