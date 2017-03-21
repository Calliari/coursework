Rails.application.routes.draw do

   get "portfolio/cv" 

   get "portfolio/project" 

	 resources :portfolio

   


	###### the CRUD bellow  are the default ##########

  # get 'portfolio/index'

  # get 'portfolio/show'

  # get 'portfolio/edit'

  # get 'portfolio/update'

  # get 'portfolio/delete'

  # get 'portfolio/new'

  # get 'portfolio/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
