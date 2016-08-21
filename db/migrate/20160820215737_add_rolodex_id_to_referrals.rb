class AddRolodexIdToReferrals < ActiveRecord::Migration
  def change
    add_column :referrals, :rolodex_id, :integer
  end
end
