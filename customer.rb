class Customer

    attr_reader :name, :wallet

    def initialize(name, wallet)
        @name = name
        @wallet = wallet
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