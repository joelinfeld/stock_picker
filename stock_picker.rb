def stock_picker(price_array)
  best_differential = nil
  buy_sell_days = nil
  price_array.each_with_index do |price, index|
    max_remaining = price_array[index..-1].each_with_index.max
    current_differential = max_remaining[0] - price
    if (current_differential <=> best_differential) == 1 || best_differential == nil
      best_differential = current_differential
      buy_sell_days = [index, max_remaining[1] + index]
    end
  end
  return buy_sell_days  
end

print stock_picker([17,4,6,3,15,8,16,6,1,10])
print stock_picker([5,4,3,2,1,10])