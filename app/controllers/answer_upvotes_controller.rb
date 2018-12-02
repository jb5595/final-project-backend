class AnswerUpvotesController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def create
      @upvote = AnswerUpvote.find_by(upvoter_type: upvote_params[:upvoter_type], upvoter_id: upvote_params[:upvoter_id], answer_id: upvote_params[:answer_id] )
      if @upvote
        @upvote.score =upvote_params[:score]
        @upvote.save
      else
        @upvote = AnswerUpvote.create(upvote_params)
      end
      render json: {upvote: @upvote, upvoteScore: @upvote.answer.upvote_score}, status: 200
    end

    def index
      if params[:answer_id]
        @answer = Answer.find(params[:answer_id])
        @upvotes = @answer.answer_upvotes
        @upvoteScore = @answer.upvote_score
        render json: {upvotes: @upvotes, upvoteScore:@upvoteScore}, stats: 200
      end
    end

    private

    def upvote_params
      params.require(:answer_upvote).permit(:upvoter_id, :answer_id, :upvoter_type, :score)
    end
end
