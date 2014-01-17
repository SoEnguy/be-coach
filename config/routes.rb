BeCoach::Application.routes.draw do

  resources :steps
  resources :users
  resources :challenges

  post "oauths/callback" => "oauths#callback"
  get "oauths/callback" => "oauths#callback" # for use with Github
  get "oauths/logout" => "oauths#logout"
  get "oauths/:provider" => "oauths#oauth", :as => :auth_at_provider

  get "steps/:id/do", to: "steps#do", as: 'do_step'

  #get "/list_challenge" => 'list_challenge#list_challenge'
  #get "/FAQ" => 'welcome#FAQ'
  #get "/myprofile" => "profile#myprofile"

  root :to => 'challenges#index'
end
