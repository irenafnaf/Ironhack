Rails.application.routes.draw do
# root to: 'links#new'
get '/' => 'links#new'
get '/links/:id' => 'links#show'
post '/links' => 'links#create', as: :links

                      # 'Controller#action'
                      # controller name# action'
get '/:shortlink' => 'links#index'
end
