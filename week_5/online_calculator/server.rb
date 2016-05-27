require "sinatra"
require_relative "lib/calculator"

get "/" do	
	erb :home
end


get "/add" do
	erb :add
end

get "/subtract" do
	erb :subtract
end

get "/multiply" do
	erb :multiply
end

get "/divide" do
	erb :divide
end

calculator = Calculator.new

post "/calculate" do
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	operation = params[:operation]
		if operation == "addition"
				result = calculator.add(first, second)
				"#{first} + #{second} = #{result}"

		elsif operation == "subtraction"
				result = calculator.subtract(first, second)
				"#{first} - #{second} = #{result}"

		elsif operation == "multiplication"
				result = calculator.multiply(first, second)
				"#{first} * #{second} = #{result}"

		elsif operation == "division"
				result = calculator.divide(first, second)
				"#{first} / #{second} = #{result}"
		end
end

# post "/calculate_subtract" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = calculator.subtract(first, second)
# 	"#{first} - #{second} = #{result}"
# end

# post "/calculate_multiply" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = calculator.multiply(first, second)
# 	"#{first} * #{second} = #{result}"
# end

# post "/calculate_divide" do
# 	first = params[:first_number].to_f
# 	second = params[:second_number].to_f
# 	result = calculator.divide(first, second)
# 	"#{first} / #{second} = #{result}"
# end