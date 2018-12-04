class WebsiteClicksController < ApplicationController

  skip_before_action :authorized, only: [:create, :index]


  def create
    WebsiteClick.create(expert_id: params[:expert_id])
  end
end
