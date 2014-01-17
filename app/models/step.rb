class Step < ActiveRecord::Base
  resourcify
  belongs_to :challenge
  has_and_belongs_to_many :user
  attr_accessible :id, :name, :text, :challenge_id

  def done_by_user user
  	true
  end

  def count_for_user user
  	12
  end

end
