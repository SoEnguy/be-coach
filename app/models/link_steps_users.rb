class LinkStepsUsers < ActiveRecord::Base
  attr_accessible :step_id, :user_id, :isComplete
  has_many :users
  has_many :steps
end
