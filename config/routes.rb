Rails.application.routes.draw do
  resources :posts
  # Index/Welcome Routes
	root to: "welcome#index"

  # Sessions Routes
	get "/log_in", to: "sessions#new", as: "log_in"
	post "/sessions", to: "sessions#create"
	delete "/sessions", to: "sessions#destroy", as: "logout"

  # User Routes
	resources :users
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
