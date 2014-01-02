class Step < ActiveRecord::Base
  resoucify
  belongs_to :challenge
  attr_accessible :name, :text, :challenge_id
end
