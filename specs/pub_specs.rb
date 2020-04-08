require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub.rb')

class TestPub < Minitest::Test
    
    def setup
        @drink1 = Drink.new("Whiskey")
        @drink2 = Drink.new("Wine")
        @drink3 = Drink.new("Vodka")
        @pub = Pub.new("Winchester", 500, [@drink1, @drink2, @drink3])
    end


    
end