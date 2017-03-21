Rails.application.routes.draw do

	# root 'static#home'

 #  get 'picture' , to: 'pictures#index'


   get 'picture/:id/show' , to: 'pictures#show'

 #   get 'picture/new' , to: 'pictures#create'

	 resources :pictures


  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
