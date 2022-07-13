MAX_CAPACITY_PER_ITEM = 30 # Максимальное количество товаров на складе

# store = []

$/ = "end" 
user_input = STDIN.gets.chomp
store = user_input.split("\n")

# STDIN.read.split("\n").each do |a|
#   if a == 'end'
#     a.rstrip!
#     break
#   end
#   store << a
# end
# Finish user input with CTRL + D

idx = store.index('stock_update')
current_stock = store.slice(0...idx)
stock_update = store.slice(idx..)

current_stock.delete('current_stock')
stock_update.delete('stock_update')

current_hash = current_stock.map do |el|
  amount, name = el.split(",")
  amount = amount.to_i
  [amount, name]
end.to_h.invert

updated_stock = stock_update.map do |el|
  amount, name = el.split(",")
  amount = amount.to_i
  [amount, name]
end

updated_stock.each do |(amount, key)|
  current_hash[key] ||= 0
  current_amount = current_hash[key]
  current_hash[key] = amount + current_amount unless current_amount == MAX_CAPACITY_PER_ITEM
end

result = current_hash.to_a.map(&:reverse).each do |el|
  amount, name = el
  if amount == MAX_CAPACITY_PER_ITEM
    el << 'full'
  end
end

result.each do |el|
  puts el.join(",")
end
