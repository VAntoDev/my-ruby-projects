def stock_picker(stock_prices)

  best_profit = 0
  profit = 0
  best_stock = []

  #Calculating the best profit and returning the best pair in the end
  stock_prices.each do | price |
    stock_prices.each do | price_to_subtract |
      profit = price - price_to_subtract
      if stock_prices.index(price_to_subtract) < stock_prices.index(price)
        if profit > best_profit
          best_profit = profit
          best_stock = [stock_prices.index(price_to_subtract), stock_prices.index(price)]
        end      
      end
    end
  end
  best_stock
end

p stock_picker([17,3,6,9,15,8,6,1,10])