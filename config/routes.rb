Rails.application.routes.draw do
 
  get "/", to: "pages#home"
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
 
  resources :posts do
    resources :comments
  end
end