Rails.application.routes.draw do

get '/posts/new' => 'posts#new'
get '/posts' => 'posts#index'
get '/posts/:id' => 'posts#show', as: :post

post '/posts' => 'posts#create'

post '/posts/:id/upvote' => 'posts#upvote'
post '/posts/:id/downvote' => 'posts#downvote'

end
