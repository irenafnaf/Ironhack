Rails.application.routes.draw do

	devise_for :users

root to: "static_pages#home"


get '/' => 'users#home'

    resources :users, only: [:new, :show, :create, :destroy] do 
      resources :products, only: [:index, :show, :create, :destroy, :new]
    end


get '/products' => 'products#all', as: :products


post '/products/:product_id/bids' => 'bids#create', as: :product_bids


end
