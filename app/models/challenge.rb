class Challenge < ActiveRecord::Base
	resourcify
  attr_accessible :name, :text
  has_many :steps
end
