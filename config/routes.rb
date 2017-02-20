Rails.application.routes.draw do
 get "/", to: "posts#index"
 get "/posts", to: "posts#index"
 post "/posts/search", to: "posts#search"
 get "/posts/new", to: "posts#new"
 post "/posts", to: "posts#create"
 get "/posts/:id", to: 'posts#show'
 get "/posts/:id/edit", to: 'posts#edit'
 patch "/posts/:id",to: "posts#update"
 delete "/posts/:id", to: 'posts#destroy'
end
