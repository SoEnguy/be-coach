BeCoach::Application.routes.draw do

  resources :steps
  resources :users
  resources :challenges

  post "oauths/callback" => "oauths#callback"
  get "oauths/callback" => "oauths#callback" # for use with Github
  get "oauths/:provider" => "oauths#oauth", :as => :auth_at_provider

  get "/FAQ" => 'welcome#FAQ'
  root :to => 'welcome#index'
end
