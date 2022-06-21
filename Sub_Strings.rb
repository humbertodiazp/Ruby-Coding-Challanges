# Recall how to turn strings into arrays and arrays into strings.
require 'pry-byebug'

dictionary = ["below","down","go", "horn", "going","horn","how","howdy","it","i","low","own","part","partner","sit"]


dictionary.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  p result
end

# # need to add dictionary array to input array and then run reduce method on both to figure
#  out the number of like strings
# # however this does not address how to create sub-strings from main input string. 
# .e. below has low in it as a substring, 
# # need to figure out how to identify substrings--perhaps by using string.to_a method
#  and vice versa. 

def sub_string (x)
  value = x
# Get substring at indexes 0 through 3.
# ... This is the first 4 characters.
  first_part = value[0..3]
# Get substring at indexes 2 through 3.
  second_part = value[2..3]
# Get substring past index 3 through end of string.
  last_part = value[3..-1]

  new_array = [first_part, second_part, last_part]

  print new_array
end
