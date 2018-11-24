class ExpertsController < ApplicationController
  skip_before_action :authorized, only: [:show, :index]

  def show
    @expert = Expert.find(params[:id])
    render json: @expert, status: 200
  end

  def index
    @experts = Expert.all
    render json: @experts, status: 200
  end
end
