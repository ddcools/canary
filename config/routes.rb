Rails.application.routes.draw do

  devise_for :users
  root 'home#welcome'

  resources :riders do
	resources :hobbies  
end


  resources :places
  resources :rides

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
