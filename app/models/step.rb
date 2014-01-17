class Step < ActiveRecord::Base
  resourcify
  belongs_to :challenge
  has_and_belongs_to_many :users
  attr_accessible :id, :name, :text, :challenge_id

  def done_by_user user
  	self.users.include? user
  end

  def count_for_user user
  	#self.users.count user
  	2
  end
end
