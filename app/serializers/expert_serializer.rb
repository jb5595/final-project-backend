class ExpertSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :address, :city, :state, :profile_picture,
   :job_title, :phone, :email, :company, :zip_code, :website_url, :about

   has_many :work_experiences
   has_many :educations

end
