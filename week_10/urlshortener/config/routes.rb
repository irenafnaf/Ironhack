Rails.application.routes.draw do
                      # 'Controller#action'
                      # controller name# action'
get '/' => 'links#home'

get '/:shortlink' => 'links#index'
end
