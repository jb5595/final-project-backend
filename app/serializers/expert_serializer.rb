class ExpertSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :address, :city, :state, :cover_photo_url,
   :job_title, :phone, :email, :company, :zip_code, :website_url, :about,
    :top_tags, :answered_questions, :total_upvotes, :average_rating, :profile_picture_url, :answers_overview
   has_many :tags
   has_many :work_experiences
   has_many :educations

end
