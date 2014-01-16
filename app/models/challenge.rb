class Challenge < ActiveRecord::Base
	resourcify
  attr_accessible :id, :name, :text
  has_many :steps
end
