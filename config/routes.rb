Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # anser /about and send to user to an action on a controller
  # method 'url', to: 'controller#action'
  get '/about', to: 'pages#about', as: :about_us

  get '/contact', to: 'pages#contact'

  get '/team', to: 'pages#team'

  # get '/', to: 'pages#home'
  root to: 'pages#home'


  get '/restaurants', to: 'restaurants#index'
  post '/restaurants', to: 'restaurants#create'

  # get '/restaurants/1', to: 'restaurants#show'
  # get '/restaurants/2', to: 'restaurants#show'
  # value of id is going to be saved in params[:id]
  get '/restaurants/:id', to: 'restaurants#show'
end
