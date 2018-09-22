def stock_picker(price_array)
    lowest = 0;
    highest = 0;

    price_array.each_with_index do |price, index|
        # Handle highest price
        if price > price_array[highest]
            highest = index;
        elsif price < price_array[lowest] # Handle lowest price.
            if( price[index] <= price[highest] )
                lowest = index;
            end       
        end
    end

    if( lowest > highest )
        # If the day to buy is later than the day to sell, pop the last index off the array
        # and recursively check the array again for the right days to buy and sell.
        price_array.pop;
        stock_picker(price_array);
    else
        return Array.new([lowest, highest]);
    end
end
# buy_sell = stock_picker([1, 2, 3, 4, 5, 6, 7]);
# buy_sell = stock_picker([12, 14, 3, 33, 56, 1, 6]);
# buy_sell = stock_picker([6, 5, 13, 33, 60, 2, 5]);
# buy_sell = stock_picker([1, 1, 1, 1]);

puts "Buy on day: #{buy_sell[0]}";
puts "Sell on day: #{buy_sell[1]}";