class Challenge < ActiveRecord::Base
	resourcify
  attr_accessible :id, :name, :text
  has_many :steps

  def progress_by_user user
  	total_steps = 0
  	self.steps.each do |s|
  		total_steps += 1
  	end
  	my_steps = 0
  	self.steps.each do |s|
  		my_steps += s.progress user
  	end
  	progress_return = (my_steps.to_f/total_steps.to_f)*100
  	progress_return.round(1)
  end

  def score_for_user user
  	total = 0
  	self.steps.each do |s|
  		total += s.score user
  	end
  	total
  end

  def score_all_challenge user
  	#TODO: CHANGE THIS BECAUSE IT'S UGLY (but working)
  	@challenges = Challenge.all

  	total_all = 0
  	@challenges.each do |c|
  		total_all += c.score_for_user user
  	end
  	total_all
  end

  def started_by_user user
  	started = false
  	if (progress_by_user user) > 0
  		started = true
  	end
  	started
  end
end
