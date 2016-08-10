Rails.application.routes.draw do
  
  resources :contents
  devise_for :users
  root 'pages#home'

  get 'about' => 'pages#about'
 
end
