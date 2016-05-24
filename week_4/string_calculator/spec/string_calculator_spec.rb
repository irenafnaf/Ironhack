require_relative "../lib/string_calculator"
require "./spec_helper"

describe "StringCalculator" do 
	before :each do
		@calculator = StringCalculator.new
	end
	
	it "returns 0 for an empty string" do
		expect(@calculator.add_numbers("")).to eq(0)
	end

	it "returns 3 just that number" do
		expect(@calculator.add_numbers("3")).to eq(3)
	end
	
end