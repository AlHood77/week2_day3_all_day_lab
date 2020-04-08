require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub.rb')
require_relative('../drink.rb')

class TestPub < Minitest::Test
    
    def setup
        @drink1 = Drink.new("Whiskey", 3)
        @drink2 = Drink.new("Wine", 4)
        @drink3 = Drink.new("Vodka", 2)
        @pub = Pub.new("Winchester", 500, [@drink1, @drink2, @drink3])
    end

    def test_pub_can_have_name
        assert_equal("Winchester", @pub.name)
    end
    
end