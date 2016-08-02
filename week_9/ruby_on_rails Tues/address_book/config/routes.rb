Rails.application.routes.draw do

  get '/' => 'contacts#new', as: :home

end
