require "sinatra"

get "/" do 
	"Hello Sinatra"
end

get "/hi" do
	"Hi, this is another route in my application"
end

get "/about" do
	erb :about
end