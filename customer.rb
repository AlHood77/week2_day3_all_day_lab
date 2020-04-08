class Customer

    attr_reader :name, :wallet, :age

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

    #Tallying number of drinks bought by customer (by name of drink)
    def drinks_bought(drink)
        @drinks_bought << drink.name

        p @drinks_bought

    end

    
end