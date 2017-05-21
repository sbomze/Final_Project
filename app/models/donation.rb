class Donation < ApplicationRecord


  validates :id, :presence => true, :uniqueness => true
  validates :amount, :numericality => {:greater_than_or_equal_to => 1.00, :less_than_or_equal_to => 100}

  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
  belongs_to :charity, :class_name => "Charity", :foreign_key => "charity_id"

end
