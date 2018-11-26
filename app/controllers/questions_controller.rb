class QuestionsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show]

  def create
    @question = Question.create(question: question_params[:question],
       question_details: question_params[:question_details],
       user_id: question_params[:user_id])
    question_params[:tags].each do |tag|
      @tag = Tag.find_or_create_by(name:tag)
      @question.tags << @tag
    end
    render json: @question, status: 200
  end


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

  private

  def question_params
    params.require(:question).permit(:question, :user_id, :question_details, tags: [])

  end

end
