class AnswersController < ApplicationController
  skip_before_action :authorized, only: [:expert]

  def expert
    self.expert
  end

  def create
    byebug
    @answer = Answer.create(answer_params)
    render json: @answer, status: 200
  end

  private

  def answer_params
    params.require(:answer).permit(:content, :question_id, :expert_id)
  end

end
