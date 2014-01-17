class User < ActiveRecord::Base
  rolify
  authenticates_with_sorcery! do |config|
    config.authentications_class = Authentication
  end
  
  attr_accessible :id, :email, :password, :password_confirmation, :username, :authentications_attributes

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  has_and_belongs_to_many :step

  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications
end