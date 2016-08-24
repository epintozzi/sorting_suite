class InsertionSort

  def sort(unsorted)
    sorted = [] #create new array called sorted which starts empty
    unsorted.length.times do  #find the length of unsorted and do the loop that many times
      next_char = unsorted.shift #remove the first element from the unsorted array and stores to variable
      i = 0
      until sorted[i] == nil or sorted[i] >= next_char #until the next_char finds the element that is bigger than it or it reaches the end
        i = i + 1
      end
      sorted.insert(i,next_char) #adds char to the new sorted array in appropriate position
    end
    sorted
  end
end

sorter = InsertionSort.new
puts sorter.sort(["d", "b", "a", "c", "j", "x", "2"])
