Rails.application.routes.draw do
  get "signup" => "users#new"
  resource :session, only: [:new, :create, :destroy]
  resources :users
	root "movies#index"
	resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
	end

end
