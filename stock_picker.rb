def stock_picker(array)
  profit = 0
  best_days = []

  array.each_with_index do |item, index|
    array.each_with_index do |item2, index2|
      profit_change = item - item2

      if (profit > profit_change) && (index < index2)
        profit = profit_change
        best_days = [index, index2]
      end
    end
  end
  best_days
  puts "Buy on day #{best_days[0]} and sell on day #{best_days[1]} for a profit of $#{profit * -1}"
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
