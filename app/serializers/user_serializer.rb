class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :first_name
  belongs_to :community
end

