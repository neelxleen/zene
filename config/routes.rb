Rails.application.routes.draw do
  get "dashboard/index"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "dashboard/index"
  root "dashboard#index"
  resources :employees
  resources :visitors
  get "/external_check_in", to: "dashboard#external_check_in" # Display the form
  post "/external_check_in", to: "dashboard#external_check_in" # Handle form submission
end
