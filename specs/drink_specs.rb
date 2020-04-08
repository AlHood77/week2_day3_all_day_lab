require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../drink.rb')

class TestDrink < Minitest::Test

    
    
    def test_drink_can_have_name
        drink = Drink.new("Wine", 4)
        assert_equal("Wine", drink.name)
    end


    
end