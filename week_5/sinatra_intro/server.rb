require "sinatra"
require "sinatra/reloader" if development?
require "pry"

enable(:sessions)

get "/" do 
	"Hello Sinatra"
end

get "/hi" do
	@greeting = "Hi, this is another route in my application"
	erb :hi
end

get "/about" do
	erb :about
end

get "/time" do	
	@time = Time.now
	erb :timenow
end

get "/pizza" do
	@ingredients = ["pepperoni", "sausage", "peppers", "mushrooms", "cheese", "beef"]
	erb :pizza
end

get "/users/:username" do
	@username = params[:username]
	erb :profile
end

get "/session_test/:text" do
	text = params[:text]
	session[:saved_value] = text
end

get "/session_show" do
	@my_text = session[:saved_value]
	erb :session_show
end

get "/hours/ago/:hours_ago" do
	@hours_ago = params[:hours_ago]
	@time = Time.now - (@hours_ago.to_i * 3600)
	erb :hours_ago
end


