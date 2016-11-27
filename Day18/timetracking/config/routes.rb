Rails.application.routes.draw do
  get 'time_entries/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/', to: 'site#home'

  get '/contact', to: 'site#contact'


  get '/calculator', to: 'site#calculator'

  post '/calculate', to: 'site#calculate'


  get '/projects', to: 'projects#index'

  get '/projects/new', to: 'projects#new'

  post '/projects', to: 'projects#create'

  get '/projects/:id', to: 'projects#show'

  get '/projects/:project_id/time_entries', to: 'time_entries#index'

  get '/projects/:project_id/time_entries/new', to: 'time_entries#new'

  post '/projects/:project_id/time_entries',

  	to: 'time_entries#create', as: :project_time_entries


end
