Rails.application.routes.draw do


  # Index/Welcome Routes
	root to: "welcome#index"

  # Sessions Routes
	get "/log_in", to: "sessions#new", as: "log_in"
	post "/sessions", to: "sessions#create"
	delete "/sessions", to: "sessions#destroy", as: "logout"

  # User Routes
	resources :users

  #Post Routes
  resources :posts

  #City Routes
  get 'cities', to: "cities#index", as: "cities"
  get 'cities/:id', to: "cities#show", as: "city"

end
