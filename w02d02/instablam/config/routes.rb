Rails.application.routes.draw do

# post "users/:user_id/followers" , to: "followers#create"

 resources :sessions, only: [:new, :create]

 get '/logout', to: "sessions#destroy"


  resources :users do
    resources :followers, only: [:create, :delete]
end


  resources :pictures do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'
end
