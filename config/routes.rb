Rails.application.routes.draw do
  resources :point_of_interests
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "points_of_interest#index"
end
