Rails.application.routes.draw do

  devise_for :users
  resources :users do
  	member do
  		get :following ,:followers
  	end
  end

  resources :relationships
   resources :posts
  #Define root url
root 'pages#index'

  get '/home' => 'pages#home'

  get '/user/:id' => 'pages#profile'

  get '/explore' => 'pages#explore'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
