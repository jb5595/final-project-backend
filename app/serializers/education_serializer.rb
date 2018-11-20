class EducationSerializer < ActiveModel::Serializer
  attributes :id, :school, :degree, :field_of_study, :description, :start_year,
  :end_year
end
