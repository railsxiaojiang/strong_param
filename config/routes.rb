Rails.application.routes.draw do
  resources :billing_statements
  devise_for :users

  root "billing_statements#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
