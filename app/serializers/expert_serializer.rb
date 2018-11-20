class ExpertSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :address,
  :city, :state, :profile_picture,
   :job_title, :phone, :email, :company

end
