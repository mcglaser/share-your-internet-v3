module CommunitiesHelper



  def first_one_here?
    Community.where(community_zip: current_user.zip_code).count < 1
  end





	
end