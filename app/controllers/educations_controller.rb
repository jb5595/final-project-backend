class EducationsController < ApplicationController

  def create

    if params[:expert_id]
      @expert = Expert.find(params[:expert_id])
      @education = Education.new(education_params)
      @expert.educations << @education
      render json: @expert, status: 200
    end
  end

  def update
    if params[:expert_id]
      @expert = Expert.find(params[:expert_id])
      @education = Education.find(education_params[:id])
      if @education.update(education_params)
        render json: @expert, status: 200
      else
        render json: { error: 'failed to update account' }, status: :not_acceptable

      end
    end
  end
  def destroy
    if params[:expert_id]
      @expert = Expert.find(params[:expert_id])
      @education = Education.find(params[:id]).destroy
      render json: @expert, status: 200
    end
  end


  private
  def education_params
    params.require(:education).permit(:id,:school,
       :degree, :field_of_study, :start_year, :end_year,
       :description)
  end
end
