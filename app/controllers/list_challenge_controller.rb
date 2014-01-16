class ListChallengeController < ApplicationController
	def list_challenge
		@challenge_list = Challenge.all
	end
	def select
		
	end
end
