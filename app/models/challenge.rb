class Challenge < ActiveRecord::Base
  attr_accessible :name, :text
  has_many :steps
end
