Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'stars#index'
  get '/stars/new', to: 'stars#new'
  post '/stars', to: 'stars#create'

  delete '/stars/destroy/:id', to: 'stars#destroy'
  get '/stars/update_view/:id', to: 'stars#update_view'
  post '/stars/the_real_update/:id', to: 'stars#the_real_update'

  post '/stars/:id/goals', to: 'stars#create_goal'
end
