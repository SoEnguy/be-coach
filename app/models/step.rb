class Step < ActiveRecord::Base
  resourcify
  belongs_to :challenge
  has_and_belongs_to_many :users
  attr_accessible :id, :name, :text, :challenge_id, :score

  #TODO : Current_user not accessible from model
  def done
  	done_by_user current_user
  end

  def done_by_user user
  	self.users.include? user
  end

  def count
  	count_for_user current_user
  end 

  def count_for_user user
  	count = 0
  	self.users.each do |u|
  		if user == u
  			count += 1
  		end
  	end
  	count
  end

  def progress user
  	progress_return =0
  	self.users.uniq.each do |u|
	  	if u == user
	  		progress_return +=1
	  	end
  	end
  	progress_return
  end

  def score_by_step user
  	count = 0
    self.users.each do |u|
      if user == u
        count += self.score
      end
    end
  	count
  end
end
