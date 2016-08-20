class Rolodex < ActiveRecord::Base
  has_many :referrals
  accepts_nested_attributes_for :referrals
#  before_save :erase_empty_ingredients

  def erase_empty_ingredients
    self.ingredients = self.ingredients.select {|i| i.name && i.name != '' || i.quantity && i.quantity != ''}
  end
end