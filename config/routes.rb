Rails.application.routes.draw do
 
  get 'contact_form/new'

  get 'contact_form/create'

  get 'pages/home'

  get 'pages/mission'

  get 'pages/law'

  get 'pages/about'

  get 'pages/contacts'
  get 'pages/program'

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
  resources :contact_forms





 
  resources :posts do
    resources :comments
  end
end