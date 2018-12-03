class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :email, :revenue_range, :size_range, :location, :number_of_questions
end
