Rails.application.routes.draw do

  get '/' => 'site#home', as: :home

end
