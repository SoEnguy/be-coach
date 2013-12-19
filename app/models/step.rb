class Step < ActiveRecord::Base
  belongs_to :challenge
  attr_accessible :name, :text, :challenge_id
end
