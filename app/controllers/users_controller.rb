class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :show, :index]


  def create

    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end

  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
    render json: UserSerializer.new(@user), status:200
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end

  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: 200
  end

  def index
    @users = User.all
    render json: @users, status: 200
  end

  private

  def user_params
    params.require(:user).permit(:user_name,
      :email,
      :password,
      :revenue_range,
      :size_range,
      :profile_picture,
      :industry,
      :location)
  end
end
