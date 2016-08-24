class AddReferralIdToReferralsRolodexes < ActiveRecord::Migration
  def change
    add_column :referrals_rolodexes, :referral_id, :integer
  end
end
