Rails.application.routes.draw do
 
  resources :contacts
  get "/", to: "pages#home"
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/posts/search", to: 'posts#search'
  post "/troops/search", to: 'troops#search'

  resources :troops do
  end

  resources :discussions do
    resources :discussion_comments
  end


 
  resources :posts do
    resources :comments
  end
end