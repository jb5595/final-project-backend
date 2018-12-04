class ProfileViewsController < ApplicationController

  skip_before_action :authorized, only: [:create, :index]


  def create
    ProfileView.create(expert_id: params[:expert_id])
  end
end
