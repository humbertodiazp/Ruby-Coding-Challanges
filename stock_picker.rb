def stock_picker(prices)
    min_p = prices[0]
    min_i = 0
  
    profit = 0
    days = [0, 0]
  
    prices.each_with_index do |p, i|
      if p < min_p
        min_p = p
        p '1'
        p min_p
        min_i = i
        p '2'
        p min_i
        next
      end
      
      if p - min_p > profit
        profit = p - min_p
        p '3'
        p profit 
        days = [min_i, i]
        p '4'
        p days
      end
    end
    
    days
  end
  
  array = [17, 3, 6, 9, 15, 8, 5, 12, 10, 22, 78, 4, 45]

# iterate every number passed each index and use push method to 
# add sum values to a net_value array, which we can then sort to find the 
# highest and lowest returns. need to be able to trace back the indexes of the highest
# return pair. 
# e.g. 3 - 17 = -14 
#     6 - 17 - -11
#     9 - 17 = -8
#     etc. 

# array.map {|word| word.[word]}

# arr = [17,3,6,9,15,8,6,1,10]
# p x = arr.each_with_index.min
# p y = arr.each_with_index.max

# p x[0] - y[0]
# p x[1] - y[1]


# # could use minmax method to determine the highest/lowest values to calculate best return
# # however, unlinke the each_with_index method it does not return the index
# # one work around for this is to create a new array each iteration that removes the 
# # previously found min/max values, so that we find the next min/max
# p y = arr.minmax {|a, b| a<=>b}

# arr = [17,3,6,9,15,8,6,1,10]

# new_arr = []
# p x = new_arr.push(arr.each_with_index.min)

# p x[0][0]
# new_arr.push(x)
# p y = arr.each_with_index.max

# p new_arr

# a=[11,22,31,224,44].to_enum
# a.each.with_index { |val,index| puts "index: #{index} for #{val}" }
# p a

# # This may be the way to go. it returns #=> [5, 2, 3, 4, 0, 1] the indexes
# # of the array ordered from smallest to biggest. 

# p [9,43,3,6,7,0].
#   each_with_index.to_a. # [[9, 0], [43, 1], [3, 2], [6, 3], [7, 4], [0, 5]]
#   sort_by(&:first).     # [[0, 5], [3, 2], [6, 3], [7, 4], [9, 0], [43, 1]]
#   map(&:last)   








# # p x[0] - y[0]
# # p x[1] - y[1]

# p arr.sort { |b, a| a <=> b}

# p y = arr.minmax {|a, b| a<=>b}

#   arr.delete(y[0])
#   arr.delete(y[1])

# p arr
# p arr.minmax{|a, b| a<=>b}

# p arr.index(y[0])