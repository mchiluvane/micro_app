MicroApp::Application.routes.draw do
  resources :users do 
    resources :microposts
  end
 root :to => 'users#index'
end 
