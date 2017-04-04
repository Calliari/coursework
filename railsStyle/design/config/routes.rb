Rails.application.routes.draw do
  get '/' , to: 'static#home'
  get '/article' , to: 'static#article'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
