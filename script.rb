require 'pry-byebug'

def shifted_array(n)
  abcs_array = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y' , 'z']

shifted_array = abcs_array.shift(n)
shifted_abcs = abcs_array + shifted_array

return shifted_abcs
end 

def caesar_cipher(word, n)
  abcs_array = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y' , 'z']
  new_abcs = shifted_array(n)
  p new_abcs
  words = word.split('')
  p words 

  #returns array with a list of indexes to be passed in shifted_array and return the ciphered word. 
 

  word_index = []
  words.each do |words|
     word_index.push(abcs_array.index words[words.to_i])
    end
    p word_index

ciphered_word =[]

word_index.each do |word_index|
   
    ciphered_word.push(new_abcs[word_index.to_i])
  end


return ciphered_word.join
end


p caesar_cipher("humberto", 3)



#p caesar_cipher("humberto", 22)

# 'dqixanpk'

#p caesar_cipher("mackenzie", 22)
# "iwygajvea"
# x = 'fellow'
# created_arry = ['f', 'e', 'l', 'l', 'o', 'w']

# find index of items in abcs_array based on items in created_arry[x]

# x being the items in the created_arry


# abcs_array.index['f']

# for abcs_array = letter| letter 

#   words.each do |item|
#     if item.to_i == abcs[item.to_i]
#       matches.push(abcs.index item )
#     end
#   end

# p caesar_cipher(7)[0]


# def new(x)
#   y = x.split('')
  
#   if abcs.include? words[y.to_i]
#     return abcs.index y
#   end 
# end

# p words['f'.to_i]


#   #if item in input_rray is in abcs_array return the index of that item in the abcs_array
#   # --> feed index to the cipher, then combine to create ciphered word


#   #combine abcs_array with input_rray and when duplicate is found, return index of item
#   #feed this index to the shifted_abcs.shift(index of duplicate)




#   shifted_abcs = 
#   ['a', 'b', ]
#   [c, d, e]f, g, h] [i, j, k] [l, m, n][o, p,q ] [r, s, t] [u, v, w] [x, y, z] [a, b, c] [d, e, f]

# #the rule is to shift third letter 

#   hash that contains keys for each letter of the aphabet equaling that letter shifted 3 spaces to the left. 
# end


# > caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"


# array = ["a", "b", "c"]
# array.sort

# aone = array.map { |string| string.string[2] }

# puts aone


# y = 'hellow'

# y.split(''

# p )



# def new(x)
#   abcs= ['a', 'b', 'c', 'd', 'e',  'f', 'g', 'h', 'i', 'j', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y' , 'z']
# matches = []
# y = x.split('')
# y.to_a
  
#   if abcs.include? y[ |y| y.to_i]
#     return matches.push(abcs.index y)
#   end 
# end


# abcs= ['a', 'b', 'c', 'd', 'e',  'f', 'g', 'h', 'i', 'j', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y' , 'z']

# words = ['f', 'e', 'l', 'l', 'o', 'w']

# p abcs.include? words['f'.to_i]
# #=> true 
