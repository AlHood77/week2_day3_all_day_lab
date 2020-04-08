class Pub

    attr_reader :name, :till, :drinks, :drinks_sold

    def initialize(name, till, drinks)
        @name = name
        @till = till
        @drinks = drinks
        @drinks_sold = 0
    end

    #cash from customer received into till
    def cash_into_till(drink)
        @till += drink.price
    end

     #pub checking age of customer
     def check_age(age)
        return @customer.age 
     end

    #Sell drink if over 18(Give drink to customer, increase number sold, cash from wallet, cash into till)
    def sell_drink(drink, customer)
        if  check_age(age) >= 18
            @customer.pay_for_drink(drink)
            customer.drinks_bought << drink
            @drinks_sold += 1
            cash_into_till(drink)
            
        else
            p "I'm afraid we can't serve you."   
        end
        
    end

   
    

end