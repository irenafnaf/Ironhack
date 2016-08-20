Rails.application.routes.draw do

  root to: "static_pages#home"
 
  devise_for :users

 	resources :sandwiches, only: [:index, :show], controller: "sandwich_views"

	scope "/api" do
	  	resources :ingredients, except: [:new, :edit]
	  	resources :sandwiches, except: [:new, :edit]
	  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

		post '/sandwiches/:id/ingredients/add' => 'sandwich_ingredient#add_ingredient'
	end

end
