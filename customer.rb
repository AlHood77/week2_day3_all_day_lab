class Customer

    attr_reader :name, :wallet

    def initialize(name, wallet)
        @name = name
        @wallet = wallet
        @drinks_bought = []
    end

    def pay_for_drink(drink)
        @wallet -= drink.price
    end

    def drinks_bought(drink)
        @drinks_bought << drink.name

        p @drinks_bought

    end

    
end