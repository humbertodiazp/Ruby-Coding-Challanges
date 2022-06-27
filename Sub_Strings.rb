# Recall how to turn strings into arrays and arrays into strings.
require 'pry-byebug'

dictionary = ["below","down","go", "horn", "going","horn","how","howdy","it","i","low","own","part","partner","sit"]



def sub_strings(x, dictionary)
  word_array = new_strings(x)
  # add word_array and dictionary array to form a single array 
  combined_array = word_array + dictionary

  # return the number of times a word appearsß using the reduce method 
  hash = combined_array.reduce({}) do |hash, word|
    # turn word to string
    hash[word.to_s] ||=0
    hash[word.to_s] += 1
    hash
  end
  print hash 
end 


    



def new_strings (x)
  # create array from input
  words = x.split
  # create new array and remove all special characters from words while leaving blank spaces
  new_array = words.map {|word| word.delete('^a-zA-Z0-9')}
  # an array to add to the original dictionary array and then sort for unique valuesß
 p new_array
  value = new_array.join('')
  p value
# Get substring at indexes 0 through 3.
# ... This is the first 4 characters.
  first_part = value[0..4]
# Get substring at indexes 2 through 3.
  second_part = value[1..3]
# Get substring past index 3 through end of string.
  last_part = value[-3..-1]
# need to find a way to only return those values that are duplicated in the original dictionary
# not the newest_array below. should only return the number of times the original phrase appears, and that 
# phrases subsctrings. how many times they appear in the original dictionary  
  newest_array = new_array + [first_part, second_part, last_part]
  return newest_array
end

sub_strings('hello, how are you!', dictionary)

