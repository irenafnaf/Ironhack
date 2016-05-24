require_relative ("../lib/lexiconomitron")
require_relative "./spec_helper"

describe Lexiconomitron do 
	before :each do
		@lexiconomitron = Lexiconomitron.new
	end
  
  	describe "#eat_t" do
      	it "removes every letter t from the input" do
      		expect(@lexiconomitron.eat_t("great scott!")).to eq("grea sco!")
      	end
    end

    describe "#shazam" do
    	it "it reverses the letters within the words, returns only the first and last words and eats Ts" do
    		expect(@lexiconomitron.shazam(["This", "is", "a", "boring", "test"])).to eq(["sih", "se"])
    	end
    end

end
