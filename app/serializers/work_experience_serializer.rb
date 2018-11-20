class WorkExperienceSerializer < ActiveModel::Serializer
  attributes :id, :title, :company, :location, :start_month, :start_year, :end_month, :end_year, :created_at, :updated_at,:expert_id, :description
end
