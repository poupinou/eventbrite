Rails.application.routes.draw do
	root 'static_pages#home', as: 'home'
	resources :users
	resources :events

  get '/login', to: 'sessions#new', as: 'new'

  post  '/login', to: 'sessions#create', as: 'login'

  delete '/log_out', to: 'sessions#destroy', as: 'logout'

	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
