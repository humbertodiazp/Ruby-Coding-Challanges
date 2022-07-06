def bubble_sort(numbers)
    min_n = numbers[0]
    min_i = 0

  

  numbers.each_with_index do |n, i|
      if n <= min_n
        min_n = n
       

    #   
        numbers[i], numbers[min_n] = numbers[min_n], numbers[i] 
       
        next
      end
    numbers 
  end
end

p bubble_sort([4,3,78,2,0,2])