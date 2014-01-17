class Step < ActiveRecord::Base
  resourcify
  belongs_to :challenge
  has_and_belongs_to_many :user
  attr_accessible :id, :name, :text, :challenge_id
end
