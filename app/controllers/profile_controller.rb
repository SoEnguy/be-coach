class ProfileController < ApplicationController
  def myprofile
  	@step_list = Step.all

  	#RECUP TABLE JOINTURE PUIS PARCOURIR TOUT LES STEP EN FONCTION DE L'USER_ID
  	@recupLink = LinkStepsUsers.find_by_sql("SELECT * FROM link_steps_users WHERE user_id = #{current_user.id}") #RQ A REFAIRE

  	@challenge_db = Challenge.find_by_sql("SELECT * FROM challenges") #AJOUTER LE WHERE

  end
  def list
  end
end
