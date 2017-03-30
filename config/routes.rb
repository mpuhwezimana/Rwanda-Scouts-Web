Rails.application.routes.draw do
 
  get 'pages/home'

  get 'pages/mission'

  get 'pages/law'

  get 'pages/about'

  get 'pages/contacts'
  get 'pages/program'

  match '/contactes', to: 'contactes#new', via: 'get'
  resources "contactes", only: [:new, :create]

  resources :contacts
  get "/", to: "pages#home"
  get "/pages/mission", to: "pages#mission"
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

  resources :discussion_comments






 
  resources :posts do
    resources :comments
  end
end