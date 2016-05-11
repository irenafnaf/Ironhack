class Authenticator
	def initialize (proper_username, proper_password)
		@proper_username = proper_username
		@proper_password = proper_password
	end

	def verify(username_input, password_input)
		if (username_input == @proper_username) && (password_input == @proper_password)
			true
		else
			false
		end
	end

end

