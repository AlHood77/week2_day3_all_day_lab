require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../customer.rb')

class TestCustomer < Minitest::Test
    
    def setup
       @customer = Customer.new("Mike", 20) 
    end



    
end