class UserAuthController < ApplicationController


  skip_before_action :authorized, only: [:create]

  def create
    @user = User.find_by(user_name: user_login_params[:user_name])
    @expert = Expert.find_by(user_name: user_login_params[:user_name])
    #User#authenticate comes from BCrypt
    if @user && @user.authenticate(user_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    elsif @expert && @expert.authenticate(user_login_params[:password])
      token = encode_token({ expert_id: @expert.id })
      render json: { expert: ExpertSerializer.new(@expert), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def user_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:user).permit(:user_name, :password)
  end

end
