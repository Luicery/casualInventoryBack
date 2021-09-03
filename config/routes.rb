Rails.application.routes.draw do
  post 'company_token' => 'company_token#create'
  resources :stocks
  resources :locations, except: [:show]
  resources :companies ,except: [:create, :show]
  resources :items
  get "/locationprofile/:id" => "locations#show"
  post "/signup" => "companies#create"
  post "/giveItem" => "items#giveItem"
  post "/changeItem" => "items#changeItem"
  post "/deleteItem" => "items#deleteItem"
  get "/companyProfile" => "companies#companyProfile"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
