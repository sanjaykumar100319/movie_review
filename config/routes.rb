Rails.application.routes.draw do
  get "signup" => "users#new"
  resource :session, only: [:new, :create, :destroy]
  resources :users
	root "movies#index"
	resources :movies do
    resources :reviews
	end

end
