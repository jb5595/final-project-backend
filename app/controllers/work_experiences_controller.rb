class WorkExperiencesController < ApplicationController


  def create
    if params[:expert_id]
      @expert = Expert.find(params[:expert_id])
      @work_experience = WorkExperience.new(work_experience_params)
      @expert.work_experiences << @work_experience
      render json: @expert, status: 200
    end
  end

  def update
    byebug
    if params[:expert_id]
      @expert = Expert.find(params[:expert_id])
      @work_experience = WorkExperience.find(params[:work_experience][:id])
      if @work_experience.update(work_experience_params)
        render json: @expert, status: 200
      else
        render json: { error: 'failed to update account' }, status: :not_acceptable

      end
    end
  end

  def destroy
    if params[:expert_id]
      @expert = Expert.find(params[:expert_id])
      @work_experience = WorkExperience.find(params[:id]).destroy
      render json: @expert, status: 200
    end
  end

  private
  def work_experience_params
    params.require(:work_experience).permit(:id,:title,
       :company, :location, :start_month, :start_year, :end_month, :end_year,
       :description)
  end

end
