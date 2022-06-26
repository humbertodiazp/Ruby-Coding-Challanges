# Recall how to turn strings into arrays and arrays into strings.
require 'pry-byebug'

dictionary = ["below","down","go", "horn", "going","horn","how","howdy","it","i","low","own","part","partner","sit"]


# dictionary.reduce(Hash.new(0)) do |result, vote|
#   result[vote] += 1
#   p result
# end

# # need to add dictionary array to input array and then run reduce method on both to figure
#  out the number of like strings
# # however this does not address how to create sub-strings from main input string. 
# .e. below has low in it as a substring, 
# # need to figure out how to identify substrings--perhaps by using string.to_a method
#  and vice versa. 

def sub_strings(x, dictionary)
  word_array = new_strings(x)
  combined_array = word_array + dictionary  
  combined_array .reduce(Hash.new(0)) do |result, vote|
    result[vote] += 1
    p result
  end
end 


def new_strings (x)

  # remove all special characters from words 
  words = x.delete('^a-zA-Z0-9')
  # find way to keep spaces, so that you can then create 
  # an array to add to the original dictionary array and then sort for unique valuesß

  new_array = x.split()
  y = x.delete ',' '!' 
  value = y.split(/ /)
# Get substring at indexes 0 through 3.
# ... This is the first 4 characters.
  first_part = value[0..4].join()
# Get substring at indexes 2 through 3.
  second_part = value[1..3].join()
# Get substring past index 3 through end of string.
  last_part = value[-3..-1].join()
# need to find a way to only return those values that are duplicated in the original dictionary
# not the newest_array below. should only return the number of times the original phrase appears, and that 
# phrases subsctrings. how many times they appear in the original dictionary  
  newest_array = new_array +[first_part, second_part, last_part]
  return new_array
end

sub_strings('hello, how are you!', dictionary)