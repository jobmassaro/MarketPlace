Rails.application.routes.draw do
  
  get 'transactions/create'

  get 'transactions/pickup'

  get 'transaction/create'

  get 'transaction/pickup'

  get 'create/pickup'

  resources :contents
  devise_for :users
  root 'pages#home'

  get 'about' => 'pages#about'

  post '/compra/:slug', to: 'transactions#create', as: :compra

  get '/pickup/:guid', to: 'transactions#pickup', as: :pickup 
 
end
