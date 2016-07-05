class ProductsController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@product = @user.products.new
	end
end


