Rails.application.routes.draw do
  
  devise_for :users
  get '/about'=>'home#about'
  get '/contact'=>'contacts#new'

  root 'home#top'
  resources :posts

  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
