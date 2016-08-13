Rails.application.routes.draw do
  resources :ingredients, except: [:new, :edit]
  resources :sandwiches, except: [:new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

post '/sandwiches/:id/ingredients/add' => 'sandwich_ingredient#add_ingredient'
end
