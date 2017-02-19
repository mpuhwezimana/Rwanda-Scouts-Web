Rails.application.routes.draw do
 get "/", to: "posts#index"
 get "/posts", to: "posts#index"
 get "/posts/new", to: "posts#new"
 post "/posts", to: "posts#create"
 get "/posts/:id", to: 'posts#show'
 get "/posts/:id/edit", to: 'posts#edit'
 patch "/posts/:id",to: 'posts#update'
end
