Rails.application.routes.draw do

get '/' => 'users#home'

    resources :users, only: [:new, :show, :create, :destroy] do 
      resources :products, only: [:index, :show, :create, :destroy, :new]
  end
end
