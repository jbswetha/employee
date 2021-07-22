Rails.application.routes.draw do
  resources :employees
  resources :empdetails
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root "home#index"
  resources :employeedetails do
    resources :experiences
  end
  devise_scope :user do  
    authenticated :user do
      root to: 'employeedetails#index', as: :authenticated_root
    end
    unauthenticated do
      root to: 'devise/sessions#new', as: :unauthenticated_root
    end
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
 
end
