Rails.application.routes.draw do

 #  get 'comments/create'

 #  get 'comments/action'

	# # root 'static#home'

  get 'picture' , to: 'pictures#index'


  get 'picture/:id/show' , to: 'pictures#show'

 #   get 'picture/new' , to: 'pictures#create'




	 resources :pictures do
	 	resources :comments , only: [:create]
	 end





	 root 'static#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end



######### show.html.erb #############

# <div class="comment"> 
# <% @pictures.comments.each do |comm| %>

# <h4> <% comm.user.name %> 
# <% if  comm.user.pictures.fist %>" >	
# <img src=" <%= comm.user.pictures.first.img %> >%" alt= "">
# <% end %>

# (<%= comm.user.comments.length %> )</h4>
# <p> <% comm.body %> </p>
# <% end %>