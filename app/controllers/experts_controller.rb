class ExpertsController < ApplicationController

  def show
    @expert = Expert.find(params[:id])
    render json: @expert, status: 200

  end
end
