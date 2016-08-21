class Rolodex < ActiveRecord::Base
  has_many :referrals
  accepts_nested_attributes_for :referrals
  validates :nickname, presence: true

end