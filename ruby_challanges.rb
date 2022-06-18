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
