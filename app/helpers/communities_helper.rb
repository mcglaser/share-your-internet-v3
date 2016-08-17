module CommunitiesHelper



  def first_one_here?
    Community.where(community_zip: current_user.zip_code).count < 1
  end


def in_this_community?
	@user.community_id == @community.id
end

def all_alone?
	User.where(community_id: @community.id ).count == 1
end




def average_internet_cost
  number_of_residents = User.where(zip_code: current_user.zip_code).count
  not_countable = User.where(zip_code: current_user.zip_code, internet_type: "I do not currently have internet").count
  total_cost = User.where(zip_code: current_user.zip_code).sum(:monthly_cost)
  average = total_cost / (number_of_residents - not_countable)
  average.ceil
end









	
end