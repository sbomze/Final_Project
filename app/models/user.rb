class User < ApplicationRecord
  # attr_accessor :card_number
  # include ActiveModel::Validations

  # require 'credit_card_validations 3.4.0'

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :user_name, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates :zip_code, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  validates :state_province, :presence => true
  validates :country, :presence => true
  validates :card_number, :presence => true,  credit_card_number: true
  validates :security_code, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 000, :less_than_or_equal_to => 9999}

  has_many :donations, :class_name => "Donation", :foreign_key => "user_id"
  has_many :charities, :through => :donations

end
