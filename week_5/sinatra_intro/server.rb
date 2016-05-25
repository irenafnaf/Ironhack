require "sinatra"

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