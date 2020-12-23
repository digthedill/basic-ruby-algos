def stock_picker(prices)

# each index of the prices array is a day
# return a pair that is best index(day) to buy and to sell
days_returned = [0, 0]

    prices.each_with_index do |buy_price, buy_day|
        prices.each_with_index do |sell_price, sell_day|
            if(sell_day > buy_day)
                if(sell_price - buy_price) > (prices[days_returned[1]] - prices[days_returned[0]])
                    days_returned = [buy_day, sell_day]
                end
            end
         end
    end 
    days_returned
end
