# stock_array = ([17,3,6,9,15,8,6,1,10])
stock_array = ([17,3,6,9,15,8,6,1,10])
# => [1,4]   for a profit of $15 - $3 == $12

# pseudo code;

# 1- percorrer o array e para compra naquele array, ver qual seria o melhor
#  dia de venda e salvar num array de arrays duplos (dia de venda, lucro)
# 2- fazer o sort do array tomando o lucro como variavel e pegar o primeiro elemento
# 3- buscar o index que tem o valor do primeiro elemento do sort

arr_exp = stock_array.map.with_index do |key, value|
  [key, value]
end
p arr_exp

# [[17, 0], [3, 1], [6, 2], [9, 3], [15, 4], [8, 5], [6, 6], [1, 7], [10, 8]]

arr_acc = []
info_arr = []


arr_exp.each_with_index do |price_arr, index|
  break if index == arr_exp.length - 1
  best_sold_day_arr = arr_exp[(index+1)..].sort{ |a, b| a[0] <=> b[0]}.reverse[0]
  profit = best_sold_day_arr[0] - price_arr[0]
  p "index:#{index} -> price_arr:#{price_arr} -> best_sold_day_arr #{best_sold_day_arr} -> profit: #{profit}"
  # p best_sold_day_arr
  # p price_arr0]
  info_arr.push([index, best_sold_day_arr[1], best_sold_day_arr[0] - price_arr[0]])
  # arr_acc.push(sold_day_arr)
end

puts "-------"
p info_arr

picked_days_arr = info_arr.sort{|a, b| a[2] <=> b[2]}.reverse[0]

puts "deve comprar no #{picked_days_arr[0]}, vender no #{picked_days_arr[1]} e ter lucro de #{picked_days_arr[2]}"

# stock_array_expanded = stock_array.map.with_index do |key, value|
#   [key, value]
# end



