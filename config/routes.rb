BeCoach::Application.routes.draw do

  

  resources :step_selections
  resources :steps
  resources :users
  resources :challenges

  post "oauths/callback" => "oauths#callback"
  get "oauths/callback" => "oauths#callback" # for use with Github
  get "oauths/logout" => "oauths#logout"
  get "/profile/oauths/logout" => "oauths#logout"
  get "oauths/:provider" => "oauths#oauth", :as => :auth_at_provider

  get "/list_challenge" => 'list_challenge#list_challenge'
  get "/FAQ" => 'welcome#FAQ'
  get "/myprofile" => "profile#myprofile"
  get "/Home" => 'welcome#index'
  get "/select" => 'step_selections#index'
  root :to => 'welcome#index'
end
