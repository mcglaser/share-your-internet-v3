class AddUserIdToReferrals < ActiveRecord::Migration
  def change
    add_column :referrals, :user_id, :integer
  end
end
