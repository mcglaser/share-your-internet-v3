class CommunitySerializer
  def self.serialize(community)

    serialized_community = '{' 
    serialized_community += '"id": ' + community.id.to_s + ', '
    serialized_community += '"community_name": "' + community.community_name + ', '
    serialized_community += '"community_address": "' + community.community_address + ', '
    serialized_community += '"community_city": "' + community.community_city + ', '
    serialized_community += '"community_state": "' + community.community_state + ', '
    serialized_community += '"community_zip": "' + community.community_zip + ' '
    serialized_community += '}'
  end
end