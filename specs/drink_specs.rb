require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink.rb')

class TestDrink < Minitest::Test

    def setup
       @drink = Drink.new("Wine", 4) 
    end
    
    def test_drink_can_have_name
        assert_equal("Wine", @drink.name)
    end

    def test_drink_can_have_price
        assert_equal(4, @drink.price)
    end
    
end