class WelcomeController < ApplicationController
	skip_before_filter :require_login
	def index
	end
	def current_users_list
    current_users.map {|u| u.username}.join(", ")
  end
end
