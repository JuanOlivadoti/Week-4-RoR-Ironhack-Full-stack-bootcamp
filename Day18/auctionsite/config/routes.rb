Rails.application.routes.draw do
  
  get '/', to: 'products#show_all'

  resources :users do
  	resources :products do
      resources :bids, only: [:create, :new]
    end
	end

  get '/users/:user_id/products/:id/bid/new', to: 'bids#new',
    as: :new_bids

  post '/users/:user_id/products/:id/bid', to: 'bids#create',
    as: :bids
  

  # post '/users/:user_id/products/:id/bid', to: 'bid#create',

  # as: :user_product_bid_index

	# resources :bids, only: [:create]

 #  get '/users/:user_id/products/:id/bid/new', to: 'bids#new'

 #  post '/bid', to: 'bids@create'


  # get '/', to: 'products#index'
 
  # get '/products/new_product'

  # get '/users/new', to: 'users#new'

  # post '/users', to: 'users#create'

  # get '/users/:id', to: 'users#show'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
