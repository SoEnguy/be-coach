class Step < ActiveRecord::Base
  resourcify
  belongs_to :challenge
  belongs_to :user
  attr_accessible :id, :name, :text, :challenge_id
end
