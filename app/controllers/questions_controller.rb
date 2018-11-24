class QuestionsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]


  def index
    if params[:user_id]
      @questions = User.find(params[:user_id]).questions
      render json: @questions, status: 200
    end
  end

  def show
    @question = Question.find(params[:id])
    render json: @question, status: 200
  end

end
