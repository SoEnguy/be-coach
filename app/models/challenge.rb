class Challenge < ActiveRecord::Base
	resourcify
  attr_accessible :id, :name, :text
  has_many :steps

  def progress_by_user user
  	42
  end
end
