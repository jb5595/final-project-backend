class AnswerUpvotesController < ApplicationController

    def create
      @upvote = AnswerUpvote.find_by(upvoter_type: upvote_params[:upvoter_type], upvoter_id: upvote_params[:upvoter_id], answer_id: upvote_params[:answer_id] )
      if @upvote
        @upvote.score =upvote_params[:score]
        @upvote.save

      else
        @upvote = AnswerUpvote.create(upvote_params)
      end
      render json: @upvote, status: 200
    end

    private

    def upvote_params
      params.require(:answer_upvote).permit(:upvoter_id, :answer_id, :upvoter_type, :score)
    end
end
