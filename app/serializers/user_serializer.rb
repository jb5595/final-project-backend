class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :email, :revenue_range, :size_range, :location
end
