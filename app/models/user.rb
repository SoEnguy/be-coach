class User < ActiveRecord::Base
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end
  
  attr_accessible :email, :password, :password_confirmation, :username, :authentications_attributes

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications
end