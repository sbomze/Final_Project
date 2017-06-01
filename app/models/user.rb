class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # attr_accessor :card_number
  # include ActiveModel::Validations

  require 'credit_card_validations'
  require 'bcrypt'
  attr_accessor :password
  # attr_accessor :user_name, :email, :password, :password_confirmation
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  #Validations
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :user_name, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :zip_code, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  validates :state_province, :presence => true
  validates :country, :presence => true
  validates :card_number, :presence => true  #,credit_card_number: true
  validates :security_code, :presence => true, :numericality => {:only_integer => true, :greater_than_or_equal_to => 000, :less_than_or_equal_to => 9999}
  validates :password, :confirmation => true #password_confirmation attr
  # validates_length_of :password, :in => 6..20, :on => :create

  #Associations
  has_many :donations, :class_name => "Donation", :foreign_key => "user_id"
  has_many :charities, :through => :donations

#   #Encryption
#   before_save :encrypt_password
#   after_save :clear_password
#
#   def encrypt_password
#
#     if password.present?
#       self.salt = BCrypt::Engine.generate_salt
#       self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
#     end
#
#   end
#
#   def clear_password
#     self.password = nil
#   end
#
#   #Authentification
#   def self.authenticate(username="", login_password="")
#
#     if  EMAIL_REGEX.match(username)
#       user = User.find_by_username(username)
#     end
#
#     if user && user.match_password(login_password)
#       return user
#     else
#       return false
#     end
#
#   end
#
#   def match_password(login_password="")
#     encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
#   end
#
end
