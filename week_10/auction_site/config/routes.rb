Rails.application.routes.draw do

get '/' => 'users#home'

    resources :users, only: [:new, :show, :create, :destroy] do 
      resources :products, only: [:index, :show, :create, :destroy, :new]
    end


get '/products' => 'products#all', as: :products


post '/products/:product_id/bids' => 'bids#create', as: :product_bids


end
