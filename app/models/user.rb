class User < ApplicationRecord
  # attr_accessor :card_number
  # include ActiveModel::Validations

  require 'credit_card_validations'

  attr_accessor :password

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :user_name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :zip_code, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  validates :state_province, :presence => true
  validates :country, :presence => true
  validates :card_number, :presence => true,  credit_card_number: true
  validates :security_code, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 000, :less_than_or_equal_to => 9999}
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create



  has_many :donations, :class_name => "Donation", :foreign_key => "user_id"
  has_many :charities, :through => :donations

end
