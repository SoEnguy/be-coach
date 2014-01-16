class ProfileController < ApplicationController
  def myprofile
  	@step_list = Step.all
  	
  	#@tempvar = Step.joins(link_steps_users: :user)
  	#@tempvar = Step.find_by_sql("SELECT * FROM steps, link_steps_users")

  	#RECUP TABLE JOINTURE PUIS PARCOURIR TOUT LES STEP EN FONCTION DE L'USER_ID
  	@recupLink = LinkStepsUsers.find_by_sql("SELECT * FROM link_steps_users WHERE user_id = #{current_user.id}")
    
  	#@mySteps =

  end
  def list
  end
end
