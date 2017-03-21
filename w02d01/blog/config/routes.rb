Rails.application.routes.draw do
  
  #this resources do the routing automatically
  resources :posts 

  # #index
  # get 'posts' , to: 'posts#index'

  # #new
  # get 'posts/new' , to: 'posts#new'

  # #show
  # get 'posts/:id' , to: 'posts#show'

  # #edit
  # get 'posts/:id/edit' , to: 'posts#edit'

  # #update
  # put 'posts/:id' , to: 'posts#update'

  # #delete
  # delete 'posts/:id' , to: 'posts#destroy'

  # #create
  # post 'posts' , to: 'posts#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
