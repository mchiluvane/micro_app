MicroApp::Application.routes.draw do
  get "users/new"

  get "users/edit"

  get "home/index"

  get "user_sessions/new"

  resources :users do 
    resources :microposts
  end
 root :to => 'users#new'
 resources :user_sessions
 match 'login' => "user_sessions#new",      :as => :login
 match 'logout' => "user_sessions#destroy", :as => :logout
 #root :to => 'home#index'

end 
