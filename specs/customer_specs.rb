require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')

class TestCustomer < Minitest::Test
    
    def setup
       @customer = Customer.new("Mike", 20) 
       @drink = Drink.new("Wine", 4)
    end

    def test_customer_can_have_name
        assert_equal("Mike", @customer.name)
    end

    def test_customer_can_have_money
        assert_equal(20, @customer.wallet)
    end

    def test_customer_can_pay_for_drink
        @customer.pay_for_drink(@drink)
        assert_equal(16, @customer.wallet)
    end


    
end