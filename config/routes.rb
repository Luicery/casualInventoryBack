Rails.application.routes.draw do
  post '/login' => 'company_token#create'
  resources :items
  resources :stocks
  resources :locations, except: [:show]
  resources :companies ,except: [:create, :show]
  get "/locationprofile/:id" => "locations#show"
  get "/companyprofile/:id" => "companies#show"
  post "/signup" => "companies#create"
  post "/tradeItem" => "items#tradeItem"
  post "/addItem" => "items#addItem"
  post "/useItem" => "items#useItem"
  post "/deleteItem" => "items#deleteItem"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
