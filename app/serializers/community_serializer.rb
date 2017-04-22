class CommunitySerializer < ActiveModel::Serializer
  attributes :id, :community_name, :community_address, :community_city, :community_state, :community_zip
  has_many :users
end

