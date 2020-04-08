class Pub

    attr_reader :name, :till, :drinks

    def initialize(name, till, drinks)
        @name = name
        @till = till
        @drinks = drinks
    end

    #cash from customer received into till
    def cash_into_till(drink)
        @till += drink.price
    end

    #pub checking age of customer
    def check_age(age)
       age = @customer.age 
    end
    
    
    
end