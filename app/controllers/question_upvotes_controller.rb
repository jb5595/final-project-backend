class QuestionUpvotesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def create
    @upvote = QuestionUpvote.find_by(upvoter_type: upvote_params[:upvoter_type], upvoter_id: upvote_params[:upvoter_id], question_id: upvote_params[:question_id] )
    if @upvote
      @upvote.score =upvote_params[:score]
      @upvote.save

    else
      @upvote = QuestionUpvote.create(upvote_params)
    end
    render json: @upvote, status: 200
  end

  def index

    if params[:question_id]
      @question = Question.find(params[:question_id])
      @upvotes = @question.question_upvotes
      @upvoteScore = @question.upvote_score

      render json: {upvotes: @upvotes, upvoteScore:@upvoteScore}, stats: 200
    end
  end


  private

  def upvote_params
    params.require(:question_upvote).permit(:upvoter_id, :question_id, :upvoter_type, :score)
  end
end
