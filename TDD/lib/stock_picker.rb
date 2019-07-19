def stock_picker(stock_prices)
  current_highest_index = 0
  current_lowest_index = 0
  current_max_diff = 0
  last_index = stock_prices.length - 1
  
  (0...last_index).each do |start|
    (start + 1..last_index).each do |ending|
      diff = stock_prices[ending] - stock_prices[start]

      if diff > current_max_diff
        current_highest_index = ending
        current_lowest_index = start
        current_max_diff = diff
      end

    end
  end

  [current_lowest_index, current_highest_index]
end