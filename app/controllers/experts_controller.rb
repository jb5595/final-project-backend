class ExpertsController < ApplicationController
  skip_before_action :authorized, only: [:show, :create, :index, :search_preview]

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

  def update
    update_params = expert_params
    @expert = Expert.find(params[:id])
    if expert_params[:tags]
      @tags = []
      # Handles new Tag Creation if necessary 
      expert_params[:tags].each do |tag|
        @tag = Tag.find_or_create_by(name:tag)
        @tags << @tag
      end
      update_params[:tags] = @tags

    end
    if @expert.update(update_params)
      render json: @expert, status: 200
    else
      render json: { error: 'failed to update account' }, status: :not_acceptable
    end
  end

  def create

    @expert = Expert.create(expert_params)
    if @expert.valid?
      @token = encode_token(expert_id: @expert.id)
      render json: { expert: ExpertSerializer.new(@expert), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create account' }, status: :not_acceptable
    end
  end

  private
  def expert_params
    params.require(:expert).permit(:user_name, :full_name, :address, :city,:state,:zip_code, :website_url,
    :about, :profile_picture, :job_title, :phone, :email, :company, :password, tags: [])
  end
end
