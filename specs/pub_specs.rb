require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../customer.rb')

class TestPub < Minitest::Test
    
    def setup
        @drink1 = Drink.new("Whiskey", 3)
        @drink2 = Drink.new("Wine", 4)
        @drink3 = Drink.new("Vodka", 2)
        @customer = Customer.new("Mike", 20, 33) 
        @customer2 = Customer.new("Paul", 10, 17)
        @pub = Pub.new("Winchester", 500, [@drink1, @drink2, @drink3])
    end

    def test_pub_can_have_name
        assert_equal("Winchester", @pub.name)
    end

    def test_pub_can_have_till
        assert_equal(500, @pub.till)
    end
    
    def test_pub_can_have_drinks
        assert_equal(3, @pub.drinks.count())
    end

    #cash from customer received into till
    def test_pub_receives_money_from_customer
        @pub.cash_into_till(@drink2)
        assert_equal(504, @pub.till)
    end

    #Tallying number of drinks sold to customer (by name of drink)
    def test_number_of_drinks_sold
        @pub.sell_drink(@drink1, @customer)
        assert_equal(1, @pub.drinks_sold)
    end

    #pub checking age of customer
    def test_pub_checks_customer_age
        # @customer.check_age(@customer.age)
        assert_equal(33, @customer.age)
    end

    #pub serves drink if age >= 18
    def test_pub_checks_age_before_serving__over_18
        assert_equal(true, (@customer.age >= 18))
    end

end