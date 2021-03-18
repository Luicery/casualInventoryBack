Rails.application.routes.draw do
  post 'company_token' => 'company_token#create'
  resources :items
  resources :stocks
  resources :locations
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
