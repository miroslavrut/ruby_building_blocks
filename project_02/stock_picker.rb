def stock_picker(stocks)

  best_buy = nill
  best_sell = nill
  max_profit = 0

  (0..(stocks.length - 2)).each do |buy_date|
    ((buy_date +1)..stocks.length -1).each do |sell_date|
      
      price_difference = stocks[sell_date] - stocks[buy_date]

      if price_difference > max_profit
        best_buy = buy_date
        best_sell = sell_date
        max_profit = price_difference
      end
    end
  end
    

  return [best_buy,best_sell]
end

puts "Enter stock prices separated by space"
stock_price = gets.chomp
stock_price = stock_price.split(" ")
stock_prices = []
stock_price.each do |x|
  stock_prices << x.to_i
end

puts "#{stock_picker(stock_prices)"