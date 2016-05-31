require "sinatra"
require "sinatra/reloader" if development?
require "pry"
enable(:sessions)

users = {
	josh: "swordfish",
	faraz: "password",
	irene: "intelligent"
}

#session[:current_user] = faraz / josh / irene

# Create a route to show a login form
	# Name / Password
# Create another route to verify if they
# are correct.
	# If they are correctc show them their profile
	# Save the user into session

	# If incorrect send them back to the form

get "/home" do	
	erb :home
end

post "/profile" do
	@username = params[:username]
	session[:username] = @username
	@password = params[:password]

		if users.has_key?(@username.to_sym) &&
			users[@username.to_sym] == @password
			redirect to ("/profile/#{@username}")
		else
			redirect to ("/home")
		end
end

get "/profile/:name" do
	@username = session[:username]
	erb(:profile)
end

get "/users/:username" do
	@username = params[:username]
	erb :profile
end