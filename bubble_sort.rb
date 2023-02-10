def bubble_sort(sort_array)
  for i in 1..sort_array.length
    exclude_bubble_numbers = sort_array.length - i
    exclude_bubble_numbers.times do | num |
      if sort_array[num] > sort_array[num + 1]
        sort_array[num], sort_array[num + 1] = sort_array[num + 1], sort_array[num]
      end
    end
  end
  sort_array
end

p bubble_sort([4,3,78,2,0,2]) #=> [0, 2, 2, 3, 4, 78]

p bubble_sort([28323,28393,1233,5656,223,566,2, 83, 42, -7, 0, -23823, -34]) #=> [-23823, -34, -7, 0, 2, 42, 83, 223, 566, 1233, 5656, 28323, 28393]
