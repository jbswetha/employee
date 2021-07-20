Rails.application.routes.draw do
  resources :employees
  resources :empdetails
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :employeedetails
end
