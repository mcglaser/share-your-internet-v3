class AddRolodexIdToReferralsRolodexes < ActiveRecord::Migration
  def change
    add_column :referrals_rolodexes, :rolodex_id, :integer
  end
end
