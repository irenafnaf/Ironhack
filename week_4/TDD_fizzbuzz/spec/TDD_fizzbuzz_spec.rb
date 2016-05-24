require_relative ("../lib/TDD_fizzbuzz")
require_relative "./spec_helper"

describe "FizzBuzz" do 
	before :each do
		@fizzbuzz = FizzBuzz.new
	end

	it "should return Fizz for number divisible by 3" do
		expect(@fizzbuzz.divisible_by_3(3)).to eq(true)
	end

	it "should return Buzz for number divisible by 5" do
		expect(@fizzbuzz.divisible_by_5(5)).to eq(true)
	end

	it "should return FizzBuzz for number divisible by 15" do
		expect(@fizzbuzz.divisible_by_15(15)).to eq(true)
	end

	# it "should return number if not divisible by 3, 5, and 15" do
	# 	expect(@fizzbuzz.just_number(2)).to eq(2)
	# end

	describe "#fizz_buzz_printer" do
		it "should count from 1 to a number, and return a new array with that number of elements" do
		expect(@fizzbuzz.fizz_buzz_printer(100).length).to eq(100)
		end

		it "should replace multiples of 3 with fizz" do
			expect(@fizzbuzz.fizz_buzz_printer(100)[2]).to eq("Fizz")
		end

		it "should replace multiples of 5 with buzz" do
			expect(@fizzbuzz.fizz_buzz_printer(100)[4]).to eq("Buzz")
		end

		it "should replace multiplesof 5 AND 3 with fizzbuzz" do
			expect(@fizzbuzz.fizz_buzz_printer(100)[14]).to eq("FizzBuzz")
		end
	end
end