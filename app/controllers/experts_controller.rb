class ExpertsController < ApplicationController
  skip_before_action :authorized, only: [:show, :index, :search_preview]

  def show
    @expert = Expert.find(params[:id])
    render json: @expert, status: 200
  end

  def index
    @experts = Expert.all
    render json: @experts, status: 200
  end

  def search_preview
    @experts = Expert.search_preview_results(params[:search_term])
    render json: @experts, status: 200
  end
end
