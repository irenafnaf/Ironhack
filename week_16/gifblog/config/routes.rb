Rails.application.routes.draw do

get '/posts/new' => 'posts#new'
get '/posts' => 'posts#index'
get '/posts/:id' => 'posts#show', as: :post

post '/posts' => 'posts#create'

# post '/posts/:id/upvote' => 'posts#upvote' as: :up_vote
# post '/posts/:id/downvote' => 'posts#downvote' as: :down_vote

get '/posts/sort_option' => 'posts#sort', as: :posts_sort
get '/low_posts' => 'posts#low', as: :low_posts
get '/sort_date' => 'posts#date', as: :sort_date
get'/sort_votes' => 'posts#votes', as: :sort_votes

end
