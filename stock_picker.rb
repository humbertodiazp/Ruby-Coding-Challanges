> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12


iterate every number passed each index and use push method to 
add sum values to a net_value array, which we can then sort to find the 
highest and lowest returns. need to be able to trace back the indexes of the highest
return pair. 
e.g. 3 - 17 = -14 
    6 - 17 - -11
    9 - 17 = -8
    etc. 

array.map {|word| word.[word]}

arr = [17,3,6,9,15,8,6,1,10]
p x = arr.each_with_index.min
p y = arr.each_with_index.max

p x[0] - y[0]
p x[1] - y[1]


# could use minmax method to determine the highest/lowest values to calculate best return
# however, unlinke the each_with_index method it does not return the index
# one work around for this is to create a new array each iteration that removes the 
# previously found min/max values, so that we find the next min/max
p y = arr.minmax {|a, b| a<=>b}

arr = [17,3,6,9,15,8,6,1,10]

new_arr = []
p x = new_arr.push(arr.each_with_index.min)

p x[0][0]
new_arr.push(x)
p y = arr.each_with_index.max

p new_arr

a=[11,22,31,224,44].to_enum
a.each.with_index { |val,index| puts "index: #{index} for #{val}" }
p a
# # p x[0] - y[0]
# # p x[1] - y[1]

# p arr.sort { |b, a| a <=> b}

# p y = arr.minmax {|a, b| a<=>b}

#   arr.delete(y[0])
#   arr.delete(y[1])

# p arr
# p arr.minmax{|a, b| a<=>b}

# p arr.index(y[0])