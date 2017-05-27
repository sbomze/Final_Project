class Charity < ApplicationRecord

# validates :id, :presence => true, :uniqueness => true
validates :image_url, :presence => true
validates :name, :presence => true, :uniqueness => true
validates :mission, :presence => true, :uniqueness => true
validates :rating, :presence => true

has_many :donations, :class_name => "Donation", :foreign_key => "charity_id"
has_many :users, :class_name => "User", :foreign_key => "charity_id"

end
