class TagsController < ApplicationController
  skip_before_action :authorized

  def match
    @tags = Tag.find_matching_tags(params[:tag_term])
    render json: @tags, status: 200
  end
end
