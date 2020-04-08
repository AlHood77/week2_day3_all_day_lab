class Customer

    attr_reader :name, :wallet, :age, :drinks_bought

    def initialize(name, wallet, age)
        @name = name
        @wallet = wallet
        @age = age
        @drinks_bought = []
    end

    #Price of drink dedected from customer's wallet
    def pay_for_drink(drink)
        @wallet -= drink.price
    end






    
end