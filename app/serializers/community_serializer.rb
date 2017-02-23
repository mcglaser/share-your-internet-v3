class CommunitySerializer
  def self.serialize(community)
 
    # start with the open brace to create a valid JSON object
    serialized_community = '{'
 
    serialized_community += '"id": ' + community.id.to_s + ', '
    serialized_community += '"community_name": "' + community.community_name + '" '
    #PUT THE COMMA BACK IN!@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
   # serialized_community += '"description": "' + community.description + '", '
 #
    # the author association can also be represented in JSON
   # serialized_community += '"author": {'
   # serialized_community += '"name": "' + post.author.name + '"}'
 
    # and end with the close brace
    serialized_community += '}'
  end
end